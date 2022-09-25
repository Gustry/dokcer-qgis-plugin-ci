VERSION = 2.5.1

all: build push

build:
	@echo "Building image ${VERSION}"
	@docker build --rm --build-arg VERSION=${VERSION} -t 3liz/qgis-plugin-ci:${VERSION} .
	@docker tag 3liz/qgis-plugin-ci:${VERSION} 3liz/qgis-plugin-ci:latest

push:
	@docker push 3liz/qgis-plugin-ci:${VERSION}
	@docker push 3liz/qgis-plugin-ci:latest
	@echo Visit https://hub.docker.com/r/3liz/qgis-plugin-ci/tags
