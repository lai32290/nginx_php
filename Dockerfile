FROM ubuntu:16.04

COPY run.sh /etc/myrun.sh
RUN apt-get update \
    && apt-get install nginx php-fpm php7.0-zip php7.0-mcrypt php7.0-xml php7.0-mysql php7.0-gd php7.0-curl -y \
    && chmod +x /etc/myrun.sh

COPY default /etc/nginx/sites-available/default
COPY index.php /var/www/html/index.php

EXPOSE 80
CMD ["/etc/myrun.sh"]
