FROM ubuntu:18.04

RUN apt update -y

RUN apt install apache2 -y

COPY index.html /var/www/html

COPY apache2.conf /etc/apache2/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
