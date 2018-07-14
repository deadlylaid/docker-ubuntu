FROM ubuntu:16.04
MAINTAINER jade han <deadlylaid@gmail.com>

RUN apt-get update -y --fix-missing && apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y
RUN apt-get install vim

RUN apt-get install man -y
RUN apt-get install info -y
RUN apt-get install vim -y
