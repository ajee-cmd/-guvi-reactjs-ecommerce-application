#!/bin/bash

# Variables
ENV=$1
IMAGE_NAME="priya2908/$ENV-guvi"
TAG=$2 # You can set this to a dynamic version if needed

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

# Push the Docker image to Docker Hub or your registry
echo "Pushing Docker image..."
docker push $IMAGE_NAME:$TAG

echo "Docker image built and pushed as $IMAGE_NAME:$TAG"
