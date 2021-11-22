#!/bin/bash

cd ${DEPLOY_DIR}
docker stack deploy --compose-file docker-compose.yaml ingress
cd
rm -rf ${DEPLOY_DIR}
