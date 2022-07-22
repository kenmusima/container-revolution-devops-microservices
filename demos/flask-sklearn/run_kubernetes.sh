#!/usr/bin/env bash

#dockerpath="rn"

# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo\
    --image="app"\
    --port=80 --labels app=flaskskearlndemo\
    --image-pull-policy=Never
# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80



