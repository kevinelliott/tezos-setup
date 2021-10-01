#!/bin/bash

source ../config.sh

export TEMPLATE_GIT_SOURCE="https://github.com/kevinelliott/templates"
export TEMPLATE_GIT_PATH="stacks/crypto/tezos/tezos-node-full/docker-stack.yml"
export DOCKER_NAME="tezos-full"
export TEZOS_HISTORY_MODE="full"
export TEZOS_IMPORT_SNAPSHOT="false"

./install-deps.sh

ORIG_PATH=`pwd`
cd tezos-node && ./uninstall.sh && cd ${ORIG_PATH}
cd portainer && ./uninstall.sh && cd ${ORIG_PATH}

cd portainer && ./install.sh && cd ${ORIG_PATH}
cd tezos-node && ./install.sh && cd ${ORIG_PATH}
