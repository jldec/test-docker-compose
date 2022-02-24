# test-docker-compose

This is an example docker-compose environment for testing with Gitpod

The [Gitpod prebuild](.gitpod.yml) calls docker-compose twice to do the following:

1. Build a `web` container using a Dockerfile with FROM gitpod/workspace-full  
   Usually this would use a frameworks like Rails, but in this case it just adds a timestamp file.  
   The rub here, is the the workspace-full image is quite large.
   
2. Pull 2 additional service containers for running redis and postgres in a workspace

The Gitpod command task (on startup) runs the 3 containers in detached mode
