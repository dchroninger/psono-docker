#!/bin/sh

echo "Initializing Psono Secret Server"
if [ "$1" == "--production" ]; then
    echo "Starting in production mode"
    break;
elif [ "$#" -eq 0 ]; then
    echo "Starting in development mode"
    docker compose -f ./psono-dev/compose.yaml up --remove-orphans
    break;
else
    echo "Unknown option $1"
    exit 1
fi
