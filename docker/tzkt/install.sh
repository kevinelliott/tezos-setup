#!/bin/bash

source ../../config.sh

ORIG_PATH=`pwd`

apt install -y make docker-compose

rm -rf ${TEZOS_HOST_PATH}/tzkt
git clone https://github.com/baking-bad/tzkt.git ${TEZOS_HOST_PATH}/tzkt

echo "--- TZKT: Removing existing installation"
cd ${TEZOS_HOST_PATH}/tzkt
make stop
make clean

echo "--- TZKT: Intializing"
make init

echo "--- TZKT: Starting TZKT"
make start

cd $ORIG_PATH
