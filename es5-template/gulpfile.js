var _ = require('lodash')
  , fs = require('fs')
  , path = require('path')
  , gulp = require('gulp')
  , gutil = require('gulp-util')
  , args = require('minimist')(process.argv.slice(2))
  ;

// Arguments read from command line.
var selectedConf = args.config || "development";

// Directory for services.
var serviceDir = path.join(__dirname, 'services');

// Create services folder if it doesn't exist.
if (!fs.existsSync(serviceDir)) {
  fs.mkdirSync(serviceDir);
}

// Names of all the services (must have directory serviceName/config)
var serviceNames = _.filter(fs.readdirSync(serviceDir), function(fileName) {
  var serviceConfigPath = path.join(serviceDir, fileName, 'config');
  try {
    return fs.lstatSync(serviceConfigPath).isDirectory();
  } catch (err) {
    return false;
  }
});

// Generate tasks for each service.
_.each(serviceNames, function (serviceName) {
  gutil.log(gutil.colors.green("Registering tasks for: ") + serviceName);

  var configPath = path.join(serviceDir, serviceName, 'config', selectedConf);

  // this should be done by core too (check if config is function and in that case pass context with e.g. servicePath variable)
  var config = require(configPath);

  // TODO: if one service does not have certain configuration profile, try to use one from base configurations?
  // TODO: check used features and get list of extra tasks available for service

  // TODO: move serve / test tasks to core
  gulp.task('serve:' + serviceName, function () {
    var app = require('dodo/lib/app/express/main');
    app.start(config);
  });

  gulp.task('test:' + serviceName, function () {
    // runTests(serviceName);
  });
});

// Print help about available commands.
gulp.task('default', function () {
  // TODO: list all tasks by service here, since it depends on service which features are enabled
  gutil.log(gutil.colors.cyan("-------------------------- SERVICES --------------------------"));
  gutil.log(gutil.colors.yellow(serviceNames.join(', ')));
  gutil.log(gutil.colors.cyan("--------------------------- TASKS ----------------------------"));
  gutil.log(gutil.colors.yellow("gulp test:<servicename>"));
  gutil.log(gutil.colors.yellow("gulp [--config <config-file>] serve:<servicename>"));
  gutil.log(gutil.colors.cyan("--------------------------------------------------------------"));
});
