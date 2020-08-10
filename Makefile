all: build push

build:
	@docker build -t etrimaille/qgis-plugin-ci:1.8.2 .

push:
	@docker push etrimaille/qgis-plugin-ci:1.8.2
