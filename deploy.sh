#!/bin/bash

# Variables
IMAGE_NAME="priya2908/dev-guvi/react-app"
TAG="latest"

# Pull the Docker image
echo "Pulling Docker image..."
docker pull $priya2908/dev-guvi:$latest

# Run the Docker container
echo "Running Docker container..."
docker run -d -p 80:80 --name react-app $priya2908/dev-guvi:$latest

echo "Application deployed successfully."
