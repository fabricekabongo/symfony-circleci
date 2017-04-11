#!/usr/bin/env bash

#Creates a sqlite database to run the test on
php /var/www/app/console doctrine:database:create --env=test
php /var/www/app/console doctrine:schema:create --env=test

phpunit -c /var/www/app/
