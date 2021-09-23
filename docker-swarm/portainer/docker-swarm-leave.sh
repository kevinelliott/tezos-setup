#!/bin/bash

source config.sh

echo "--- Docker: Leaving swarm"
docker swarm leave -f
echo
