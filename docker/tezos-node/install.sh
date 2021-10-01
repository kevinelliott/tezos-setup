#!/bin/bash

source config.sh

./uninstall.sh

./setup-env.sh

if [ "${TEZOS_IMPORT_SNAPSHOT}" == "true" ]; then
  TEZOS_SNAPSHOT_BLOCK="$(wget -qO- https://snaps.teztools.io/nodes/block)"
  TEZOS_SNAPSHOT_BLOCK="${TEZOS_SNAPSHOT_BLOCK}" ./get-snapshot.sh
  TEZOS_SNAPSHOT_BLOCK="${TEZOS_SNAPSHOT_BLOCK}" ./import-snapshot.sh
fi

TEZOS_VERSION="${TEZOS_VERSION}" TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE}" docker-compose up -d
