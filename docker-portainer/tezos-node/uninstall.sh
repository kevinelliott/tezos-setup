#!/bin/bash

source config.sh

echo "--- Tezos: Uninstalling Docker Tezos Node (history mode: ${TEZOS_HISTORY_MODE}"
docker rm ${TEZOS_DOCKER_NAME}
docker volume prune -f
rm -rf ${TEZOS_HOST_PATH}/node/*
echo
