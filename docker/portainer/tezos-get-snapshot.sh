#!/bin/bash

source config.sh

if [ ! -e ${TEZOS_HOST_PATH}/snapshots/full ]; then
  echo "--- Tezos: Snapshot does not exist, downloading..."
  mkdir -p ${TEZOS_HOST_PATH}/snapshots
  wget -O ${TEZOS_HOST_PATH}/snapshots/full ${TEZOS_SNAPSHOT_URL}
else
  echo "--- Tezos: Snapshot already exists, not downloading"
  echo "--- Tezos:   If you wish to import, please remove ${TEZOS_HOST_PATH}/snapshots/full and run install again"
fi
echo
