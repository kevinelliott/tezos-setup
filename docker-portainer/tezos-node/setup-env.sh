#!/bin/bash

source config.sh

echo "--- Tezos: Setting up the environment"
mkdir -p ${TEZOS_HOST_PATH}/node
chmod 777 ${TEZOS_HOST_PATH}/node
echo
