FROM php:7.4.3-apache

MAINTAINER Jose Miguel Calderon "josemiguelcalderonfrutos@gmail.com"

RUN docker-php-ext-install mysqli pdo_mysql
RUN a2enmod rewrite
ADD bookmedik/ /var/www/html

ENV USER=usuario
ENV PASS=usuario
ENV NOMBRESQL=mariadb
ENV NOMBREDB=bookmedik

EXPOSE 80