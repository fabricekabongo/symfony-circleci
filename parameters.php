<?php
/**
 * Created by PhpStorm.
 * User: fabrice
 * Date: 2017/03/11
 * Time: 2:26 AM
 */
$parameters = file_get_contents(__DIR__.'/app/config/parameters.docker.yml');

$parameters = str_replace('__DATABASE_HOST__', getenv('DATABASE_HOST'), $parameters);
$parameters = str_replace('__DATABASE_NAME__', getenv('DATABASE_NAME'), $parameters);
$parameters = str_replace('__DATABASE_USER__', getenv('DATABASE_USER'), $parameters);
$parameters = str_replace('__DATABASE_PASSWORD__', getenv('DATABASE_PASSWORD'), $parameters);

//Add your other variable here.
//$parameters = str_replace('__MY_PLACEHOLDER__', getenv('MY_VARIABLE'), $parameters);

file_put_contents(__DIR__.'/app/config/parameters.yml', $parameters);

