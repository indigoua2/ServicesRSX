FROM romeoz/docker-apache-php

RUN apt install apache2
RUN apt-get update -y && apt-get install -y nano vim
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=BE/ST=Braban-wallon/L=Louvain-La-Neuve/O=Ephec/OU=IT/CN=www.l2-1.ephec-ti.be"

COPY b2b.php /var/www/b2b/index.php
COPY b2b.conf /etc/apache2/sites-available/b2b.conf
COPY www.html /var/www/index.html
COPY www.conf /etc/apache2/sites-available/www.conf
COPY www-ssl.conf /etc/apache2/sites-available/www-ssl.conf

RUN apt-get install -y software-properties-common
RUN apt-get install -y certbot python3-certbot-apache apache2

COPY apache2.conf /etc/apache2/apache2.conf

RUN a2ensite b2b.conf
RUN a2ensite www.conf
RUN a2ensite www-ssl.conf
RUN a2enmod ssl
RUN a2enmod headers
RUN a2enmod rewrite
RUN service apache2 restart
