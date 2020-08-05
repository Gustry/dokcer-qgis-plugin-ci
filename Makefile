build:
	@docker build -t etrimaille/qgis-plugin-ci:1.8.2 .
	@docker push etrimaille/qgis-plugin-ci:1.8.2