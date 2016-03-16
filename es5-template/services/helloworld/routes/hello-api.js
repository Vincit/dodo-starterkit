'use strict';

var ValidationError = require('dodo/lib/errors/ValidationError');

module.exports = function (router, app) {
  router
    .get('/hello')
    .handler(function (req) {
      return {
        fi: "Moro"
      };
    });

  router
    .get('/error')
    .handler(function (req, res, next) {
      throw new ValidationError({ gimme: "a break" });
    });
};
