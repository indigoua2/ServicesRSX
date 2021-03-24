FROM unbuntu:latest

RUN sudo apt-get install -y bind9

WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf
COPY 1.16.172.in-addr.arpa /etc/bind/master/1.16.172.in-addr.arpa
COPY wtl2-1.ephec-ti.be /etc/bind/master/wtl2-1.ephec-ti.be

EXPOSE 53/udp 53/tcp
