FROM ubuntu:16.04

COPY run.sh /etc/myrun.sh
RUN apt-get update && apt-get install nginx php-fpm -y && chmod +x /etc/myrun.sh

COPY default /etc/nginx/sites-available/default
COPY index.php /var/www/html/index.php

EXPOSE 80
CMD ["/etc/myrun.sh"]
