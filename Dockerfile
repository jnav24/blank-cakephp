FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libicu-dev \
    libpq-dev \
    libxpm-dev \
    libvpx-dev \
    libzip-dev \
    && pecl install xdebug-2.9.8 \
    && pecl install redis \
    && docker-php-ext-enable xdebug redis \
    && docker-php-ext-install -j$(nproc) intl zip mysqli pdo_mysql exif \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www/html

# Install PHP extensions and other dependencies
RUN docker-php-ext-install -j$(nproc) intl zip mysqli pdo_mysql exif

# Expose the port the app runs on
EXPOSE 9000

