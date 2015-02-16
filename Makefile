
all: build

components: component.json
	npm run component install --dev

build: index.js dialog.css template.html | components
	npm run component build --dev

clean:
	rm -rf components build

test: test-phantom

test-phantom: | build
	npm run component test phantom

test-browser: | build
	npm run component test browser


.PHONY: all clean test test-phantom test-browser
