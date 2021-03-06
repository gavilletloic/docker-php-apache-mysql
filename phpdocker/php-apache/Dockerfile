# Dockerfile
FROM php:7.4-apache

ENV COMPOSER_ALLOW_SUPERUSER=1

EXPOSE 80
WORKDIR /app

RUN apt-get update -qy && \
    apt-get install -y libpng-dev \
	libmcrypt-dev \
    git \
    libicu-dev \
    unzip \
    zip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# PHP Extensions
RUN docker-php-ext-install -j$(nproc) opcache pdo_mysql
RUN pecl install mcrypt-1.0.3
RUN docker-php-ext-install gd
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
ADD conf/php.ini /usr/local/etc/php/conf.d/app.ini

# Apache
ADD errors /errors
RUN a2enmod rewrite remoteip
ADD conf/vhost.conf /etc/apache2/sites-available/000-default.conf
ADD conf/apache.conf /etc/apache2/conf-available/z-app.conf
RUN a2enconf z-app