# symfony-circleci
This is the minimum setup to test your symfony project on CircleCi in a docker container and deploy the test image to your docker-hub

# Important

***This isn't a symfony distribution***

- clone this code and copy its content into your symfony project.
- You'll need an account on [CircleCi](https://circleci.com/), though you can run this on local too.
- replace the placeholder in the files to make it work fine.
- To deploy to docker-hub, you need to set up [environment variable on your circleCi project](https://circleci.com/docs/1.0/docker/). DOCKER_EMAIL, DOCKER_PASS and DOCKER_USER so the script can login to your dockerhub and push the image. 

