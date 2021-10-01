#!/bin/bash

source config.sh

echo "--- Portainer: Uninstalling existing Portainer in Docker"
docker stop portainer
docker rm portainer
docker volume prune -f
echo
