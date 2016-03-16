'use strict';

var mergeConfig = require('dodo/lib/utils/merge-config');

module.exports = mergeConfig(require('./development'), {
  profile : 'production',
  protocol: 'https',
  ssl: {
    key: '/some/path/to/key/file.key',
    cert:'/some/path/to/cert/file.crt',
    passphrase: 'gleba'
  }
});
