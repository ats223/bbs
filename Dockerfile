FROM php:8.1-fpm-alpine AS php

RUN docker-php-ext-install pdo_mysql

RUN echo -e "post_max_size = 5M\nupload_max_filesize = 5M" >> ${PHP_INI_DIR}/php.ini
