FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping


WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf
COPY l2-1.ephec-ti.be /etc/bind/l2-1.ephec-ti.be
COPY named.conf.local /etc/bind/named.conf.local
