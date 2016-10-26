'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _http = require('http');

var _http2 = _interopRequireDefault(_http);

var _koa = require('koa');

var _koa2 = _interopRequireDefault(_koa);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

const app = new _koa2.default();

// number of middleware
let n = parseInt(process.env.MW || '1', 10);
console.log('  %s async middleware', n);

while (n--) {
  app.use(async (ctx, next) => {
    await next();
  });
}

const body = new Buffer('Hello World');

app.use(async (ctx, next) => {
  await next();
  ctx.body = body;
});

// var apprequire('./koa2-async.js')
app.listen(3333);

exports.default = app;
