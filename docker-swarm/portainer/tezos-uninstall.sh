#!/bin/bash

source config.sh

echo "--- Tezos: Uninstalling Docker Tezos stack"
docker stack rm tezos
docker volume prune -f
rm -rf ${TEZOS_HOST_PATH}/node/data
echo
