FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano

# Doc Asterisk : https://doc.ubuntu-fr.org/asterisk

RUN apt install -y && apt-utils && wget && openssl && libxml2-dev && libncurses5-dev && uuid-dev && libsqlite3-dev && pkg-config && libjansson-dev 

RUN echo "Europe/Madrid" | tee /etc/timezone


# Installation d'Asterisk

# Télechargement de asterisk version 16.9
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-16.9.0.tar.gz
# Decompression du packet asterisk installé
RUN tar -xvzf asterisk-16.9.0.tar.gz
WORKDIR /usr/local/src/asterisk-16.9.0/

# Suivre documentation ubuntu 
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config

COPY ./fichiers/users.conf /etc/asterisk/users.conf
COPY ./fichiers/sip.conf /etc/asterisk/sip.conf
COPY ./fichiers/extensions.conf /etc/asterisk/extensions.conf
COPY ./fichiers/voicemail.conf /etc/asterisk/voicemail.conf

EXPOSE 5060/udp
EXPOSE 5060/tcp

#Lancement asterisk
CMD ["asterisk", "-f"]
