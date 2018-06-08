# -*- dockerfile -*-
FROM mbodenhamer/alpine-python:latest
MAINTAINER {{maintainer_name}} <{{maintainer_email}}>

RUN apk add --no-cache \
    curl \
    git

COPY setup/ /setup/

RUN cd /setup \
    && depman satisfy all

VOLUME /app
WORKDIR /app
