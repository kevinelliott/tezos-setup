#!/bin/bash

source ../config.sh

TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE:-rolling}"

./install-deps.sh

ORIG_PATH=`pwd`
cd tezos-node && ./install.sh && cd ${ORIG_PATH}
