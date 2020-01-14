FROM php:7.3-apache

RUN apt -y update \
  && apt install -y mariadb-client \
  && apt install -y inetutils-ping \
  && apt-get install -y openssh-server

RUN docker-php-ext-install pdo_mysql