#!/bin/bash

source config.sh

TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE:-rolling}"

case $TEZOS_HISTORY_MODE in
  rolling)
    TEZOS_SNAPSHOT=rolling
    ;;
  full)
    TEZOS_SNAPSHOT=full
    ;;
  archive)
    TEZOS_SNAPSHOT=full
    ;;
  *)
    TEZOS_SNAPSHOT=full
    ;;
esac

# TEZOS_SNAPSHOT_URL="https://mainnet.xtz-shots.io/${TEZOS_SNAPSHOT}"
TEZOS_SNAPSHOT_BLOCK="$(wget -qO- https://snaps.teztools.io/nodes/block)"
TEZOS_SNAPSHOT_URL="https://snaps.teztools.io/nodes/mainnet-${TEZOS_SNAPSHOT_BLOCK}.${TEZOS_SNAPSHOT}"

if [ ! -e ${TEZOS_HOST_PATH}/snapshots/${TEZOS_SNAPSHOT} ]; then
  echo "--- Tezos: Snapshot does not exist, downloading ${TEZOS_SNAPSHOT} snapshot..."
  mkdir -p ${TEZOS_HOST_PATH}/snapshots
  wget -O ${TEZOS_HOST_PATH}/snapshots/${TEZOS_SNAPSHOT} ${TEZOS_SNAPSHOT_URL}
else
  echo "--- Tezos: Snapshot already exists, not downloading"
  echo "--- Tezos: If you wish to re-download, please remove \"${TEZOS_HOST_PATH}/snapshots/${TEZOS_SNAPSHOT}\" and run install again"
fi
echo
