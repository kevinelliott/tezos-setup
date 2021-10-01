#!/bin/bash

source config.sh

echo "--- Tezos: Uninstalling Docker Tezos Archive Node"
docker rm tezos-node-archive
docker volume prune -f
rm -rf ${TEZOS_HOST_PATH}/node/*
echo
