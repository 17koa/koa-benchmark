all: clean test

test: prepare koa-1 koa-2 koa-2-async express

prepare:
	@cd koa2 && npm install
	@cd ..
	@cd other && npm install
	@cd ..
	@echo	'prepare complete'
	
version:
	@node -v
	@npm -v
	@echo	
	
koa-1:
	@echo	'benchmark koa-1'
	@./run 1 other/koa1.js
	@./run 5 other/koa1.js
	@./run 10 other/koa1.js
	@./run 15 other/koa1.js
	@./run 20 other/koa1.js
	@./run 30 other/koa1.js
	@./run 50 other/koa1.js
	@./run 100 other/koa1.js
	@echo	
	
koa-2:
	@echo	'benchmark koa-2'
	@./run 1 koa2/koa2.js
	@./run 5 koa2/koa2.js
	@./run 10 koa2/koa2.js
	@./run 15 koa2/koa2.js
	@./run 20 koa2/koa2.js
	@./run 30 koa2/koa2.js
	@./run 50 koa2/koa2.js
	@./run 100 koa2/koa2.js
	@echo	

koa-2-async:
	@echo	'benchmark koa-2-async'
	@./run 1 koa2/koa2-async-compile.js
	@./run 5 koa2/koa2-async-compile.js
	@./run 10 koa2/koa2-async-compile.js
	@./run 15 koa2/koa2-async-compile.js
	@./run 20 koa2/koa2-async-compile.js
	@./run 30 koa2/koa2-async-compile.js
	@./run 50 koa2/koa2-async-compile.js
	@./run 100 koa2/koa2-async-compile.js
	@echo	
	
express:
	@echo	'benchmark express'
	@./run 1 other/express.js
	@./run 5 other/express.js
	@./run 10 other/express.js
	@./run 15 other/express.js
	@./run 20 other/express.js
	@./run 30 other/express.js
	@./run 50 other/express.js
	@./run 100 other/express.js
	@echo	

clean:
	@rm -rf koa2/node_modules
	@rm -rf other/node_modules
	
.PHONY: prepare test 