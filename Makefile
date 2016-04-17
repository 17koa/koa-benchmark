koa-1:
	@echo	'benchmark koa-1'
	@./run 1 koa1.js
	@./run 5 koa1.js
	@./run 10 koa1.js
	@./run 15 koa1.js
	@./run 20 koa1.js
	@./run 30 koa1.js
	@./run 50 koa1.js
	@./run 100 koa1.js
	@echo	
	
koa-2:
	@echo	'benchmark koa-2'
	@./run 1 koa2.js
	@./run 5 koa2.js
	@./run 10 koa2.js
	@./run 15 koa2.js
	@./run 20 koa2.js
	@./run 30 koa2.js
	@./run 50 koa2.js
	@./run 100 koa2.js
	@echo	

koa-2-async:
	@echo	'benchmark koa-2-async'
	@./run 1 koa2-async-run.js
	@./run 5 koa2-async-run.js
	@./run 10 koa2-async-run.js
	@./run 15 koa2-async-run.js
	@./run 20 koa2-async-run.js
	@./run 30 koa2-async-run.js
	@./run 50 koa2-async-run.js
	@./run 100 koa2-async-run.js
	@echo	
	
express:
	@echo	'benchmark express'
	@./run 1 express.js
	@./run 5 express.js
	@./run 10 express.js
	@./run 15 express.js
	@./run 20 express.js
	@./run 30 express.js
	@./run 50 express.js
	@./run 100 express.js
	@echo	