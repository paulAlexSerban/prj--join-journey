#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

PROJECT_NAME=$(node -p "require('../package.json').name.split('/').pop()")
PROJECT_VERSION=$(node -p "require('../package.json').version")

echo "Pushing $PROJECT_NAME:$PROJECT_VERSION to Docker Hub"

# Publish the docker image
docker push "paulserbandev/$PROJECT_NAME:$PROJECT_VERSION"
docker push "paulserbandev/$PROJECT_NAME:latest"