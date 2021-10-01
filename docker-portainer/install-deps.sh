#!/bin/bash

echo "--- Deps: Removing existing installations of Docker"
apt-get remove docker docker-engine docker.io containerd runc

echo "--- Deps: Updating package source"
apt -qq update
echo "--- Deps: Installing Dependencies"
apt -qq install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    httpie \
    jq

rm -rf /usr/share/keyrings/docker-archive-keyring.gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "--- Deps: Updating package source"
apt -qq update
echo "--- Deps: Installing Docker"
apt -qq install -y docker-ce docker-ce-cli containerd.io rsync

echo
