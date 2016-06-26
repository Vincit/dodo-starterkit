'use strict';
const mergeConfig = require('dodo/lib/utils/merge-config')
    , path = require('path');

const serviceRootDir = path.join(__dirname, '/..');

module.exports = mergeConfig(require('../../config/development'), {
  port: process.env.PORT || 8081,

  $addFeaturePaths: [
    path.join(serviceRootDir, 'features')
  ],

  features: [
    {
      feature: 'route',
      config: {
        routePaths: [
          serviceRootDir + '/routes/**'
        ]
      }
    }
  ]
}, { debug: false});
