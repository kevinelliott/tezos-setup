#!/bin/bash

source config.sh

./uninstall.sh

./setup-env.sh

if [ "${TEZOS_IMPORT_SNAPSHOT}" == "true" ]; then
  ./get-snapshot.sh
  ./import-snapshot.sh
fi

TEZOS_VERSION="${TEZOS_VERSION}" TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE}" docker-compose up -d
