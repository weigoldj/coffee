#!/bin/zsh
###############################################################################
# Build the go docker image
###############################################################################
docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) \
  -f go.Dockerfile -t weigold/go-lang .
