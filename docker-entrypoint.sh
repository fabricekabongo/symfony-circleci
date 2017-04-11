#!/bin/sh

#Apply the environment variable on start
php parameters.php


rm -rf app/cache/*
chmod -R 777 app/cache app/logs

service apache2 start

touch ./app/logs/prod.log
tail ./app/logs/prod.log -f
