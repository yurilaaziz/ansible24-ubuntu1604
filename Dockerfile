# Dockerfile for Ansible engine for Ubuntu 16.04 (Xenial),
# Version  1.0

FROM ubuntu:16.04

MAINTAINER Amine Ben Asker <ben.asker.amine@gmail.com>

RUN apt update -y \
&&  apt install  python-pip git -y \
&&  pip install ansible==2.4.0.0 \
&&  apt remove python-pip -y

COPY ./run.sh /run.sh

ENTRYPOINT ["./run.sh"]
