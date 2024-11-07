FROM php:8.0-apache

WORKDIR /var/www/html

COPY . .

# Install MySQL client and activate mysqli extension
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Initialize database from SQL script
COPY database.sql /docker-entrypoint-initdb.d/

ENV DB_NAME=BookStore
ENV DB_USER=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=db
ENV DB_PORT=3306

CMD ["apache2-foreground"]