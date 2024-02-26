#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

PROJECT_NAME=$(node -p "require('../package.json').name.split('/').pop()")
PROJECT_VERSION=$(node -p "require('../package.json').version")

echo "Building $PROJECT_NAME:$PROJECT_VERSION"

# Build the docker image

# get latest docker image build from same Dockerfile and remove latest tag
# docker rmi $(docker images -q $PROJECT_NAME:latest)
# docker rmi $(docker images -q $PROJECT_NAME)

docker build --tag "paulserbandev/$PROJECT_NAME:$PROJECT_VERSION" \
  --file ../prod.Dockerfile ../ \
  --platform linux/amd64 \
  --no-cache
