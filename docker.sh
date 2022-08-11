#!/usr/bin/env bash

docker build -t udagram-api-feed ./udagram-api-feed
docker build -t udagram-api-user ./udagram-api-user
docker build -t udagram-frontend ./udagram-frontend
docker build -t reverseproxy ./udagram-reverseproxy

# Tagging
docker tag udagram-api-feed vinnytorde/udagram-api-feed:latest
docker tag udagram-api-user vinnytorde/udagram-api-user:latest
docker tag udagram-frontend vinnytorde/udagram-frontend:latest
docker tag reverseproxy vinnytorde/reverseproxy:latest

# Push

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push vinnytorde/udagram-api-feed:latest
docker push vinnytorde/udagram-api-user:latest
docker push vinnytorde/udagram-frontend:latest
docker push vinnytorde/reverseproxy:latest