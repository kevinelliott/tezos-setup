#!/bin/bash

PORTAINER_PASSWORD="changeme"

TEZOS_HOST_PATH="/tezos"
TEZOS_NETWORK="mainnet"
TEZOS_VERSION="10.2"
TEZOS_HISTORY_MODE="${TEZOS_HISTORY_MODE:-rolling}"
TEZOS_IMPORT_SNAPSHOT="${TEZOS_IMPORT_SNAPSHOT:-true}"

DOCKER_TEMPLATE_GIT_SOURCE="https://github.com/kevinelliott/templates"
DOCKER_TEMPLATE_GIT_PATH="stacks/crypto/tezos/tezos/docker-stack.yml"
