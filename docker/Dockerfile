FROM debian:stretch
LABEL maintainer="Stratanium Developers <dev@stratanium.org>"
LABEL description="Dockerised StrataniumCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
