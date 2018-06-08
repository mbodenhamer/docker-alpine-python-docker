[//]: # (-*- markdown -*-)

[![](https://travis-ci.org/mbodenhamer/docker-alpine-python-docker.svg?branch=master)](https://travis-ci.org/mbodenhamer/docker-alpine-python-docker)

An Alpine image for managing Docker with Python.

## Usage

To use, supply an command when creating the container.  For example, to check the version of the docker client in the container, run:

    $ docker run --rm -it -v `pwd`:/app -v /var/run/docker.sock:/var/run/docker.sock mbodenhamer/alpine-python-docker:latest docker version
