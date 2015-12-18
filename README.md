# Gollum Dockerfile

This is a simple Dockerfile for a Gollum installation. This is intended for
local testing, without any access controls or other security settings. Use at
your own risk.

To build the docker image, call

    docker build -t gollum .

To run a container, call

    docker run -v local_path:/wiki -p 4567:80 gollum

where `local_path` is the path on your Docker host which contains the wiki that
you want Gollum to serve. (Note: on OS X, if you use `docker-machine`, your
`/Users` directory is by default shared with the VirtualBox VM.)
