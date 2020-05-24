#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="ptsantar/house_price_prediction_udacity_dev_ops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment devops4 --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/devops4 8080:80 
