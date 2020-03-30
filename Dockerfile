FROM php:7.3-apache

RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite

RUN apt-get update
RUN apt-get install -y nano vim libpng-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libgmp-dev libldap2-dev netcat sqlite3 libsqlite3-dev zlib1g-dev libzip-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd pdo pdo_mysql pdo_sqlite zip gmp bcmath pcntl ldap sysvmsg exif mysqli