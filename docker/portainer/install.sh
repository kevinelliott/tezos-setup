#!/bin/bash

source config.sh

./tezos-uninstall.sh
./portainer-uninstall.sh
./docker-swarm-leave.sh

./install-deps.sh

./docker-swarm-init.sh
./portainer-install.sh

./tezos-get-snapshot.sh
./tezos-import-snapshot.sh
./tezos-install-stack-into-portainer.sh
