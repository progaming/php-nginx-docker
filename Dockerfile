FROM ubuntu:latest
EXPOSE 80
RUN apt-get update && apt-get install -y nginx php-fpm mysql-client php-mysql curl php-curl
ADD default /etc/nginx/sites-available/default
CMD service php7.0-fpm start && nginx -g 'daemon off;'