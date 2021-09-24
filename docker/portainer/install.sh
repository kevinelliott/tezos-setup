#!/bin/bash

source ../../config.sh
source config.sh

./uninstall.sh

echo "--- Portainer: DEBUG: PORTAINER_PASSWORD = ${PORTAINER_PASSWORD}"
echo "--- Portainer: Installing Portainer into Docker"
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
http POST :9000/api/users/admin/init Username="admin" Password="${PORTAINER_PASSWORD}"
PORTAINER_TOKEN=$(http POST :9000/api/auth Username="admin" Password="${PORTAINER_PASSWORD}" | jq --raw-output .jwt)
http --form POST :9000/api/endpoints "Authorization: Bearer ${PORTAINER_TOKEN}" Name="localhost" EndpointCreationType=1
echo
