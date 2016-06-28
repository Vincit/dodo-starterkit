'use strict';

const TestHelper = require('dodo/lib/utils/TestHelper')
    , expect = require('chai').expect;

const tool = TestHelper.getHelper(require('../config/testing'));

describe('hello API', () => {

  describe('GET /hello', () => {

    it('should greet with "Moro"', () => {
      return tool.request
        .get('/hello')
        .then(res => {
          expect(res.statusCode).to.equal(200);
          expect(res.body).to.eql({ fi: 'Moro' });
        });
    });

  });

  describe('GET /error', () => {

    it('should fail with ValidationError', () => {
      return tool.request
        .get('/error')
        .then(res => {
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