FROM php:7.0-apache

RUN apt-get update && apt-get install -y

# MySQL
RUN apt-get install -y mysql-client libmysqlclient-dev && docker-php-ext-install mysqli

# PDO
RUN docker-php-ext-install pdo pdo_mysql

# Enable rewrite rules (ie. to route all requests to index.php)
RUN a2enmod rewrite

