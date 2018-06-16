# -*- dockerfile -*-
FROM mbodenhamer/alpine-python:latest
MAINTAINER {{maintainer_name}} <{{maintainer_email}}>

COPY setup/ /setup/

RUN cd /setup \
    && depman satisfy all

VOLUME /app
WORKDIR /app
