#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=katrinani/predict

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath