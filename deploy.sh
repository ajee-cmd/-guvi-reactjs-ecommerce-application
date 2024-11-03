#!/bin/bash

# Variables
ENV=$1
IMAGE_NAME="priya2908/$ENV-guvi"
TAG=$2 # You can set this to a dynamic version if needed
DOCKER_PASSWORD=$3

# Run the Docker container
docker login --username priya2908 --password $DOCKER_PASSWORD
echo "Running Docker container..."
#docker run -d -p 80:80 --name react-app $priya2908/dev-guvi:$
docker compose up -d

echo "Application deployed successfully."
