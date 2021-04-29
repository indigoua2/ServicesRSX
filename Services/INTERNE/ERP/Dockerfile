FROM mysql:latest

COPY db.sql /docker-entrypoint-initdb.d/
ikram@vps-77cf28d9:~/ServicesRSX/Services/DB$ cd ..
ikram@vps-77cf28d9:~/ServicesRSX/Services$ cd ERP/
ikram@vps-77cf28d9:~/ServicesRSX/Services/ERP$ ls
action.php.save    apache2.conf  index.php       intranet.conf      resolv.conf
action.php.save.1  Dockerfile    index.php.save  intranet-ssl.conf
ikram@vps-77cf28d9:~/ServicesRSX/Services/ERP$ cat Dockerfile
FROM romeoz/docker-apache-php

RUN apt-get update -y && apt-get install -y nano vim
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y elinks curl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=BE/ST=Braban-wallon/L=Wavre/O=Ephec/OU=IT/CN=erp.intranet.ephec-ti.be"

COPY intranet.conf  /etc/apache2/sites-available/intranet.conf
COPY index.php /var/www/intranet/index.php
COPY apache2.conf /etc/apache2/apache2.conf
COPY intranet-ssl.conf  /etc/apache2/sites-available/intranet-ssl.conf
RUN a2ensite intranet.conf

RUN a2ensite intranet-ssl.conf
RUN a2enmod ssl
RUN a2enmod headers
RUN a2enmod rewrite

RUN service apache2 restart
