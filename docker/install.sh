#!/bin/bash

source ../config.sh

TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE:-rolling}"
TEZOS_IMPORT_SNAPSHOT="${TEZOS_IMPORT_SNAPSHOT:-false}"

./install-deps.sh

ORIG_PATH=`pwd`
cd tezos-node && ./install.sh && cd ${ORIG_PATH}
