#!/bin/bash

source config.sh

./tezos-uninstall.sh
./portainer-uninstall.sh
./docker-swarm-leave.sh
