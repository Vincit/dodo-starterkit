'use strict';

var TestHelper = require('dodo/lib/utils/TestHelper')
  , expect = require('chai').expect;

var tool = TestHelper.getHelper(require('../config/testing'));

describe('hello API', function () {

  describe('GET /hello', function () {

    it('should greet with "Moro"', function () {
      return tool.request
        .get('/hello')
        .then(function (res) {
          expect(res.statusCode).to.equal(200);
          expect(res.body).to.eql({ fi: 'Moro' });
        });
    });

  });

  describe('GET /error', function () {

    it('should fail with ValidationError', function () {
      return tool.request
        .get('/error')
        .then(function (res) {
          expect(res.statusCode).to.equal(400);
          expect(res.body).to.eql({
            name: 'Bad Request',
            statusCode: 400,
            data: { gimme: 'a break' }
          });
        });
    });

  });

});