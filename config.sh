#!/bin/bash

PORTAINER_PASSWORD="changeme"

TEZOS_HOST_PATH="/tezos"
TEZOS_NETWORK="mainnet"
TEZOS_HISTORY_MODE="full"
TEZOS_SNAPSHOT_URL="https://${TEZOS_NETWORK}.xtz-shots.io/full"
TEZOS_VERSION="10.2"

DOCKER_TEMPLATE_GIT_SOURCE="https://github.com/kevinelliott/templates"
DOCKER_TEMPLATE_GIT_PATH="stacks/crypto/tezos/tezos/docker-stack.yml"
