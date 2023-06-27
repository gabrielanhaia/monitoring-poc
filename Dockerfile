FROM php:8.2-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
COPY --from=composer /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# Remove the existing directory
RUN rm -rf /var/www/html 

# Fetch the latest version of Symfony
RUN composer create-project symfony/skeleton .

# Set the directory permissions
RUN chown -R www-data:www-data /var/www

# Expose port 9000
EXPOSE 9000

CMD ["php-fpm"]

