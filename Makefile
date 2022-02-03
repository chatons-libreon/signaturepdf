.PHONY: test

node_modules/jest/bin/jest.js:
	npm install jest

node_modules/puppeteer:
	npm install puppeteer

install-ci: node_modules/jest/bin/jest.js node_modules/puppeteer

test-ci:
	./node_modules/jest/bin/jest.js

test: node_modules/jest/bin/jest.js node_modules/puppeteer
	./node_modules/jest/bin/jest.js
