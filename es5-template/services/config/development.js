'use strict';
var path = require('path');

// This file contains shared configuration which may be used for all services
var frameworkRootDir = path.join(__dirname, '/../..');
module.exports = {

  // Possible values ['http', 'https']
  protocol: 'http',

  // Possible values ['development', 'testing', 'production']
  profile : 'development',

  // The directories from which to search for the features...
  // TODO: nicer syntax here...
  featurePaths: [
    path.join(frameworkRootDir, 'node_modules/dodo-core-features'),
    path.join(__dirname, '..', 'features')
  ],

  // The features to enable for the service. See dodo-core-features for documentation.
  features: [
    {
      feature: 'route',
      config: {
        unauthenticatedStatusCode: 202
      }
    }, {
      feature: 'error-handler',
      config: {
        handlers: ['http']
      }
    }, {
      feature: 'test-runner'
    }
  ]
};
