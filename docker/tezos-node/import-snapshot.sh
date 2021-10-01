#!/bin/bash

source config.sh

TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE:-rolling}"

case $TEZOS_HISTORY_MODE in
  rolling)
    TEZOS_SNAPSHOT="rolling"
    ;;
  full)
    TEZOS_SNAPSHOT="full"
    ;;
  archive)
    TEZOS_SNAPSHOT="full"
    ;;
  *)
    TEZOS_SNAPSHOT="full"
    ;;
esac

echo "--- Tezos: Importing snapshot ($TEZOS_SNAPSHOT) into Tezos Node path"
docker run --rm \
  -v ${TEZOS_HOST_PATH}/node:/var/run/tezos/node \
  -v ${TEZOS_HOST_PATH}/snapshots/${TEZOS_SNAPSHOT}:/snapshot \
  tezos/tezos:v${TEZOS_VERSION} tezos-snapshot-import --block=${TEZOS_SNAPSHOT_BLOCK}
echo
