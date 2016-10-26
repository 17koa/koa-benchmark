
import http from 'http'
import Koa from 'koa'

const app = new Koa()

// number of middleware
let n = parseInt(process.env.MW || '1', 10)
console.log('  %s async middleware', n)

while (n--) {
  app.use(async (ctx, next) => {
    await next()
  })
}

const body = new Buffer('Hello World')

app.use(async (ctx, next) => {
  await next()
  ctx.body = body
})


// var apprequire('./koa2-async.js')
app.listen(3333)

export default app
