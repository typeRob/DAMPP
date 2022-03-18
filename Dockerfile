FROM php:apache

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y cron curl git wget software-properties-common
RUN apt-get install -y --no-install-recommends libpq-dev libzip-dev libmcrypt-dev libssl-dev libxml2-dev libcurl4-openssl-dev libfreetype6-dev libonig-dev pkg-config libmagickwand-dev libtool gnupg2
RUN apt-get install -y ssh libssh2-1-dev libssh2-1 make gcc telnet snmp libsnmp-dev expect

RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
RUN docker-php-ext-configure mysqli --with-mysqli=mysqlnd
RUN docker-php-ext-install curl mbstring mysqli pdo pdo_pgsql pdo_mysql
RUN docker-php-ext-install snmp
RUN docker-php-ext-install sockets
RUN docker-php-ext-install zip
RUN docker-php-ext-install simplexml xml xmlwriter
RUN docker-php-ext-install iconv
RUN docker-php-ext-install opcache
RUN docker-php-ext-install gd