#!/bin/bash

echo "--- Docker: Initializing swarm"
docker swarm init

if [ $? -ne 0 ]; then
  echo "--- Docker: Swarm was already initialized"
fi

echo
