
'use strict';

var http = require('http');
var koa = require('koa');
var app = new koa();


// number of middleware

var n = parseInt(process.env.MW || '1', 10);
console.log('  %s async middleware', n);

while (n--) {
  app.use(async (ctx, next) => {
    await next();
  });
}

var body = new Buffer('Hello World');

app.use(async (ctx, next) => {
  await next();
  ctx.body = body;
});


// var apprequire('./koa2-async.js')
app.listen(3333);

module.exports = app
