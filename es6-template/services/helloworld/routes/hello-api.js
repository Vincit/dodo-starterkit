'use strict';

const ValidationError = require('dodo/lib/errors/ValidationError');

module.exports = function (router, app) {
  router
    .get('/hello')
    .public()
    .handler(req => {
      return {
        fi: "Moro"
      };
    });

  router
    .get('/error')
    .public()
    .handler((req, res, next) => {
      throw new ValidationError({ gimme: "a break" });
    });
};
