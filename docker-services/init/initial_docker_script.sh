#!/usr/bin/env bash

NETWORK_NAME="public"
# Check if the Docker network already exists
if docker network inspect "$NETWORK_NAME" >/dev/null 2>&1; then
  echo "Docker network '$NETWORK_NAME' already exists."
else
  echo "Creating Docker network '$NETWORK_NAME'..."
  docker network create "$NETWORK_NAME"
  if [ $? -eq 0 ]; then
    echo "Docker network '$NETWORK_NAME' created successfully."
  else
    echo "Failed to create Docker network '$NETWORK_NAME'."
  fi
fi
