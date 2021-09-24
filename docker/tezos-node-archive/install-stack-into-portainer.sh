#!/bin/bash

source config.sh

PORTAINER_TOKEN=$(http POST :9000/api/auth Username="admin" Password="${PORTAINER_PASSWORD}" | jq --raw-output .jwt)

echo "--- Tezos: Installing Docker Tezos stack from template "
http POST ':9000/api/stacks?method=repository&type=2&endpointId=1' \
"Authorization: Bearer ${PORTAINER_TOKEN}" \
SwarmID="${SWARM_ID}" \
Name="tezos" \
RepositoryURL="${TEMPLATE_GIT_SOURCE}" \
ComposeFilePathInRepository="${TEMPLATE_GIT_PATH}"
echo
