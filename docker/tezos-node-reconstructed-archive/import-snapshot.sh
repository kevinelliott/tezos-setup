#!/bin/bash

source config.sh

echo "--- Tezos: Importing snapshot (full) with reconstruct into Tezos Node path"
docker run --rm \
  -v ${TEZOS_HOST_PATH}/node:/var/run/tezos/node \
  -v ${TEZOS_HOST_PATH}/snapshots/full:/snapshot \
  tezos/tezos:v${TEZOS_VERSION} tezos-snapshot-import --reconstruct
echo
