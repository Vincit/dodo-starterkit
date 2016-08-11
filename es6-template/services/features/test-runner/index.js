'use strict';

const runCommandInPromise = require('dodo/lib/utils/run-command-in-promise')
    , path = require('path');

class TestRunner {
  constructor(app, config) {}

  static get tasks() {
    return [
      {
        name: 'test',
        description: 'Runs all tests of the service.',
        run: function (featureConfig, baseConfig, servicePath) {
          return runCommandInPromise('node_modules/.bin/istanbul', [
            'cover', 'node_modules/.bin/_mocha',
            '--',
            '--recursive', path.join(servicePath, 'tests')
          ], {
            stdio: 'inherit'
          });
        }
      }
    ];
  }
}

module.exports = TestRunner;