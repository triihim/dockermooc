#!/bin/bash

if [ -z $REPOSITORY ] || 
   [ -z $IMAGE_NAME ] || 
   [ -z $TAG_NAME ] ||
   [ -z $DOCKER_USERNAME ] ||
   [ -z $DOCKER_PASSWORD ]
then
    echo Error. Ensure all the following env variables are set.
    echo REPOSITORY
    echo IMAGE_NAME
    echo TAG_NAME
    echo DOCKER_USERNAME
    echo DOCKER_PASSWORD
    exit 1
fi

url=https://github.com/$REPOSITORY/archive/master.tar.gz

echo Downloading GitHub repository from $url

mkdir repository
curl --location --remote-header-name --remote-name $url && \
tar -xzf *tar.gz -C repository --strip-components=1 && \
rm *tar.gz

echo Building and pushing Docker image $IMAGE_NAME
full_name=$DOCKER_USERNAME/$IMAGE_NAME:$TAG_NAME
docker build -t $full_name ./repository && \
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD && \
docker push $full_name