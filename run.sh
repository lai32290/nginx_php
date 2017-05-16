#!/bin/bash

/etc/init.d/php7.0-fpm start 
service nginx start
while true; do sleep 1d; done
