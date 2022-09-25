### Docker image for QGIS-Plugin-CI

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/3liz/qgis-plugin-ci)](https://hub.docker.com/r/3liz/qgis-plugin-ci)
[![Docker Pulls](https://img.shields.io/docker/pulls/3liz/qgis-plugin-ci)](https://hub.docker.com/r/3liz/qgis-plugin-ci)

Documentation of [QGIS-Plugin-CI](https://opengisch.github.io/qgis-plugin-ci/).
This docker project is just a docker image on top of this Python project.

Images are available on [Docker Hub](https://hub.docker.com/r/3liz/qgis-plugin-ci)

Example to generate the package and get the custom `plugins.xml` file :

Using plain `docker run` command :
```bash
docker run
  --rm -w /plugin
  -v ${CI_PROJECT_DIR}:/plugin
  -u $(id -u):$(id -g)
  3liz/qgis-plugin-ci:2.1.1
  package ${CI_COMMIT_REF_NAME}
  --allow-uncommitted-changes
  --plugin-repo-url https://custom.server.url/
```

We use `-u` because we don't want the file to be owned by root.

Or using `image` from GitLab-ci, [doc](https://docs.gitlab.com/ee/ci/docker/using_docker_images.html#define-image-in-the-gitlab-ciyml-file):

```yml
package:
  stage: Package
  image:
    name: 3liz/qgis-plugin-ci:2.1.1
  script:
    - package ${CI_COMMIT_REF_NAME} --allow-uncommitted-changes --plugin-repo-url https://custom.server.url/
```

### Transifex

It's possible to build a lighter image if you are not using Transifex.
You can comment the transifex/lrelease command in the dockerfile.

### Upgrade

Change version in the `Makefile` according to a tag available on
[pypi.org](https://pypi.org/project/qgis-plugin-ci/#history)

### Source code

Based on QGIS-Plugin-CI:
* Pypi : https://pypi.org/project/qgis-plugin-ci/
* GitHub : https://github.com/opengisch/qgis-plugin-ci
