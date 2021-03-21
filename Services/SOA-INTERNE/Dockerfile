FROM unbuntu:latest

sudo apt-get install -y bind9

WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf
COPY 0.16.172.in-addr.arpa /etc/bind/master/0.16.172.in-addr.arpa
COPY l2-1.ephec-ti.be /etc/bind/master/l2-1.ephec-ti.be
COPY resolv.conf /etc/resolv.conf

EXPOSE 53/udp 53/tcp
