#!/bin/bash

source config.sh

PORTAINER_TOKEN=$(http POST :9000/api/auth Username="admin" Password="${PORTAINER_PASSWORD}" | jq --raw-output .jwt)
SWARM_ID=$(http GET :9000/api/endpoints/1/docker/swarm "Authorization: Bearer ${PORTAINER_TOKEN}" | jq --raw-output .ID)

echo "--- Tezos: Installing Docker Tezos stack from template "
http POST ':9000/api/stacks?method=repository&type=1&endpointId=1' \
"Authorization: Bearer ${PORTAINER_TOKEN}" \
SwarmID="${SWARM_ID}" \
Name="tezos" \
RepositoryURL="${DOCKER_TEMPLATE_GIT_SOURCE}" \
ComposeFilePathInRepository="${DOCKER_TEMPLATE_GIT_PATH}"
echo
