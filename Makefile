all: build push

build:
	@docker build --no-cache -t 3liz/qgis-plugin-ci:1.8.3 .
	@docker tag 3liz/qgis-plugin-ci:1.8.3 3liz/qgis-plugin-ci:latest

push:
	@docker push 3liz/qgis-plugin-ci:1.8.3
	@docker push 3liz/qgis-plugin-ci:latest
