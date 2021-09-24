#!/bin/bash

source ../config.sh

./install-deps.sh

ORIG_PATH=`pwd`
cd portainer && ./install.sh && cd ${ORIG_PATH}
cd tezos-node-archive && ./install.sh && cd ${ORIG_PATH}
