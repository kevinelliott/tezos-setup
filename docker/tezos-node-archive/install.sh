#!/bin/bash

source config.sh

./uninstall.sh

./setup-env.sh

./install-stack-into-portainer.sh
