FROM python:3.7-slim-buster
RUN apt-get update && apt-get -y install git libglib2.0-0
RUN pip install qgis-plugin-ci==1.8.2
# RUN pip install git+https://github.com/Gustry/qgis-plugin-ci.git
# COPY /home/etienne/dev/python/qgis-plugin-ci /qgis-plugin-ci
# RUN pip install /qgis-plugin-ci
COPY gitconfig /etc/gitconfig
ENTRYPOINT ["qgis-plugin-ci"]
