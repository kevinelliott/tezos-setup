#!/bin/bash

source config.sh

./uninstall.sh

./install-deps.sh
./setup-env.sh

./get-snapshot.sh
./import-snapshot.sh
./install-stack-into-portainer.sh
