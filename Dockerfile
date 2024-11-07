FROM php:8.0-apache

WORKDIR /var/www/html

COPY . .

ENV DB_NAME=tp1opti
ENV DB_USER=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=db
ENV DB_PORT=3306

CMD ["apache2-foreground"]