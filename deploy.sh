#!/bin/bash

cd ${DEPLOY_DIR}
docker network create --driver overlay traefik-net || true
docker stack deploy --compose-file docker-compose.yaml ingress
cd
rm -rf ${DEPLOY_DIR}
