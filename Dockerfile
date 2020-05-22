FROM python:3.7-slim-buster
RUN apt-get update && apt-get -y install git
RUN pip install git+https://github.com/Gustry/qgis-plugin-ci.git
ENTRYPOINT qgis-plugin-ci
