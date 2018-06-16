# -*- dockerfile -*-
FROM mbodenhamer/alpine-python:latest
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

COPY setup/ /setup/

RUN cd /setup \
    && depman satisfy all

VOLUME /app
WORKDIR /app