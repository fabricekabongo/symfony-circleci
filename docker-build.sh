#!/usr/bin/env bash
docker build -t YOUR_USERNAME/YOUR_IMAGE_NAME .s

#Tags the image with both latest and the commit name, can be handy
#If you want to deploy specific image version instead of always deploying latest.
docker tag YOUR_USERNAME/YOUR_IMAGE_NAME YOUR_USERNAME/YOUR_IMAGE_NAME:$(git log --pretty=format:'%H' -n 1)
docker run -d --name=YOUR_IMAGE_NAME YOUR_USERNAME/YOUR_IMAGE_NAME:$(git log --pretty=format:'%H' -n 1)
