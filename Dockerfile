FROM php:7.0-apache

RUN apt-get update && apt-get install -y

RUN apt-get install -y mysql-client libmysqlclient-dev && docker-php-ext-install mysqli

RUN a2enmod rewrite
