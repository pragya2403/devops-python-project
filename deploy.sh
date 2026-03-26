#!/bin/bash

echo "Starting deployment..."

CONTAINER_NAME=python-devops-container
IMAGE_NAME=python-devops-image

echo "Stopping old container if it exists..."
docker stop $CONTAINER_NAME || true

echo "Removing old container if it exists..."
docker rm $CONTAINER_NAME || true

echo "Removing old image if it exists..."
docker rmi $IMAGE_NAME || true

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Running Docker container..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "Deployment completed."