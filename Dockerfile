# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install additional dependencies if needed
# For example, if your application requires MySQL support:
# RUN docker-php-ext-install mysqli pdo_mysql

# Expose port 80 for Apache
EXPOSE 80

# Start Apache when the container runs
CMD ["apache2-foreground"]
