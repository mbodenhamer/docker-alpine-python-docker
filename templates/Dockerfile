# -*- dockerfile -*-
FROM mbodenhamer/alpine-python:latest
MAINTAINER {{maintainer_name}} <{{maintainer_email}}>

COPY setup/ /setup/

RUN cd /setup \
    && mv docker-entrypoint.sh /docker-entrypoint.sh \
    && depman satisfy all

VOLUME /app
WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
