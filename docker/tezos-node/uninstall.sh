#!/bin/bash

source ../../config.sh
source config.sh

echo "--- Tezos: Uninstalling Docker Tezos Node (history mode: ${TEZOS_HISTORY_MODE})"
TEZOS_VERSION="${TEZOS_VERSION}" TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE}" docker-compose down
docker volume prune -f
rm -rf ${TEZOS_HOST_PATH}/node/*
echo
