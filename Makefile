VERSION = 1.8.4

all: build push

build:
	@echo "Building image ${VERSION}"
	@docker build --no-cache -t 3liz/qgis-plugin-ci:${VERSION} .
	@docker tag 3liz/qgis-plugin-ci:${VERSION} 3liz/qgis-plugin-ci:latest

push:
	@docker push 3liz/qgis-plugin-ci:${VERSION}
	@docker push 3liz/qgis-plugin-ci:latest
