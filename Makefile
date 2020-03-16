.PHONY: build
build: clean build-app build-static
	npm run build

.PHONY: build-app
build-app:
	npm run build

.PHONY: clean
clean:
	rm -rf dist/app dist/static

.PHONY: build-static
build-static:
	npm run gulp:static

.PHONY: npm-install
npm-install:
	npm i

.PHONY: init
init: npm-install build-static

