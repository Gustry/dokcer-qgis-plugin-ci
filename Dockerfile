FROM python:3.7-slim-buster
RUN apt-get update && apt-get -y install git
RUN pip install git+https://github.com/Gustry/qgis-plugin-ci.git
# COPY /home/etienne/dev/python/qgis-plugin-ci /qgis-plugin-ci
RUN pip install /qgis-plugin-ci
# RUN git config --global user.email "qgis@plugin.ci"
# RUN git config --global user.name "Packaging QGIS plugin for you"
# RUN mkdir -p ~/.ssh
# RUN echo "Host *" > ~/.ssh/config
# RUN echo " StrictHostKeyChecking no" >> ~/.ssh/config
ENTRYPOINT ["qgis-plugin-ci"]
