#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath and find the latest image ID 
dockerpath="ptsantar/house_price_prediction_udacity_dev_ops"
imageID=$(docker image ls | grep housepriceprediction | grep latest | awk '{print $3}')

# Step 2:  
# Authenticate & tag
echo "Authentication"
docker login --username ptsantar

echo "Tagging image $imageID to $dockerpath"
docker tag $imageID $dockerpath

# Step 3:
# Push image to a docker repository
echo "Pushing image"
docker push $dockerpath