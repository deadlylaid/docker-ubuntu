FROM ubuntu:16.04
MAINTAINER jade han <deadlylaid@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y
