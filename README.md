### Docker image for QGIS-Plugin-CI

Example running on GitLab-CI to generate the package and get the `plugins.xml` file :

```bash
docker run
  --rm -w /plugin
  -v ${CI_PROJECT_DIR}:/plugin
  -u $(id -u):$(id -g)
  etrimaille/qgis-plugin-ci:1.8.2
  package ${CI_COMMIT_REF_NAME}
  --allow-uncommitted-changes
  --disable-submodule-update
  --plugin-repo-url https://custom.server.url/
```

We use `-u` because we don't want the file owned by root.
