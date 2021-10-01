#!/bin/bash

source config.sh

./uninstall.sh

./setup-env.sh

if [ "${TEZOS_IMPORT_SNAPSHOT}" == "true" ]; then
  ./get-snapshot.sh
  ./import-snapshot.sh
fi

./install-stack-into-portainer.sh
