### Docker image for QGIS-Plugin-CI

Example running on GitLab-CI to generate the package and get the custom `plugins.xml` file :

```bash
docker run
  --rm -w /plugin
  -v ${CI_PROJECT_DIR}:/plugin
  -u $(id -u):$(id -g)
  3liz/qgis-plugin-ci:1.8.3
  package ${CI_COMMIT_REF_NAME}
  --allow-uncommitted-changes
  --plugin-repo-url https://custom.server.url/
```

We use `-u` because we don't want the file owned by root.

### Upgrade

Change versions in `Dockerfile` and `Makefile`.

### Source code

Based on :
* Pypi : https://pypi.org/project/qgis-plugin-ci/
* GitHub : https://github.com/opengisch/qgis-plugin-ci
