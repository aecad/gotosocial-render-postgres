# Deploy Gotosocial on Render

This repo can be used to deploy [Gotosocial](https://github.com/superseriousbusiness/gotosocial) on Render.

## Deployment

For postgres setting, followin env needed:
- GTS_DB_ADDRESS
- GTS_DB_DATABASE
- GTS_DB_USER
- GTS_DB_PASSWORD
- GTS_DB_TYPE

if no s3
GTS_STORAGE_LOCAL_BASE_PATH=/tmp/store

below not work
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/tamarou/gotosocial-render)
