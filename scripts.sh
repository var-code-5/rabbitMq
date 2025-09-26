#!/bin/bash

echo "This is a dev script to make things easier"
echo "the following commands are available:"
echo "  - ./scripts.sh start: starts the rabbitmq server"

if [ "$1" == "start" ]; then
    echo "Starting rabbitmq server..."
    docker run -d --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3-management
fi
if [ "$1" == "stop" ]; then
    echo "Stopping rabbitmq server..."
    docker stop rabbitmq
fi