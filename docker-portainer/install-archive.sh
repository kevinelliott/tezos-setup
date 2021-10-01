#!/bin/bash

source ../config.sh

TEMPLATE_GIT_SOURCE="https://github.com/kevinelliott/templates"
TEMPLATE_GIT_PATH="stacks/crypto/tezos/tezos-node-archive/docker-stack.yml"
DOCKER_NAME="tezos-archive"
TEZOS_HISTORY_MODE="archive"

./install-deps.sh

ORIG_PATH=`pwd`
cd portainer && ./install.sh && cd ${ORIG_PATH}
cd tezos-node && ./install.sh && cd ${ORIG_PATH}
