
'use strict';

function _asyncToGenerator(fn) { return function () { var gen = fn.apply(this, arguments); return new Promise(function (resolve, reject) { function step(key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { return Promise.resolve(value).then(function (value) { return step("next", value); }, function (err) { return step("throw", err); }); } } return step("next"); }); }; }

var http = require('http');
var koa = require('koa');
var app = new koa();

// number of middleware

var n = parseInt(process.env.MW || '1', 10);
console.log('  %s async middleware', n);

while (n--) {
  app.use((() => {
    var ref = _asyncToGenerator(function* (ctx, next) {
      yield next();
    });

    return function (_x, _x2) {
      return ref.apply(this, arguments);
    };
  })());
}

var body = new Buffer('Hello World');

app.use((() => {
  var ref = _asyncToGenerator(function* (ctx, next) {
    yield next();
    ctx.body = body;
  });

  return function (_x3, _x4) {
    return ref.apply(this, arguments);
  };
})());

// var apprequire('./koa2-async.js')
app.listen(3333);

module.exports = app;
