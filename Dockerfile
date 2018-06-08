# -*- dockerfile -*-
FROM mbodenhamer/alpine-python:latest
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk add --no-cache \
    curl \
    git

COPY setup/ /setup/

RUN cd /setup \
    && depman satisfy all

VOLUME /app
WORKDIR /app