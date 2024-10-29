#!/bin/bash

# Variables
IMAGE_NAME="priya2908/dev-guvi/my-react-app"
TAG="latest" # You can set this to a dynamic version if needed

# Build the Docker image
echo "Building Docker image..."
docker build -t $REACT-APP:$latest .

# Push the Docker image to Docker Hub or your registry
echo "Pushing Docker image..."
docker push $priya2908/dev-guvi:$latest

echo "Docker image built and pushed as $priya2908/dev-guvi:$latest"
