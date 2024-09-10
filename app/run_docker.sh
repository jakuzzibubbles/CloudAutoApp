#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

# Build the Docker image
echo "Building the Docker image..."
docker build -t python-app .

# Stop any running container with the same name
if [ "$(docker ps -q -f name=python-app)" ]; then
    echo "Stopping running container..."
    docker stop python-app
fi

# Remove any existing container with the same name
if [ "$(docker ps -aq -f status=exited -f name=python-app)" ]; then
    echo "Removing old container..."
    docker rm python-app
fi

# Run the Docker container
echo "Running the Docker container..."
docker run -d -p 80:80 --name python-app python-app

echo "Docker container is now running on port 80"
