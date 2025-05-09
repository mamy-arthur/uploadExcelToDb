FROM php:8.2.0-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends vim curl debconf subversion git apt-transport-https apt-utils \
    build-essential locales acl mailutils wget nodejs zip unzip \
    gnupg gnupg1 gnupg2 \
    zlib1g-dev \
    libpq-dev \
    libzip-dev\
    sudo \
    cron

RUN docker-php-ext-install pdo pdo_mysql zip

RUN apt-get update && \
    apt-get install -y libxml2-dev libpng-dev libjpeg-dev libfreetype6-dev

RUN docker-php-ext-configure gd --with-freetype --with-jpeg=/usr/include/
RUN docker-php-ext-install gd

RUN docker-php-ext-install soap

RUN apt-get update && \
    apt-get install -y libxslt1-dev && \
    docker-php-ext-install xsl

RUN docker-php-ext-install bcmath
RUN docker-php-ext-install intl

RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev

COPY php.ini /usr/local/etc/php/php.ini
COPY php-fpm-pool.conf 	/usr/local/etc/php/pool.d/www.conf

RUN curl -sSk https://getcomposer.org/installer | php && \
	mv composer.phar /usr/local/bin/composer

RUN wget --no-check-certificate https://phar.phpunit.de/phpunit-6.5.3.phar && \
    mv phpunit*.phar phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit

RUN groupadd dev -g 999 && \
    useradd dev -g dev -d /home/dev -m && \
    passwd -d dev

RUN rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen

RUN echo "dev ALL=(ALL) ALL" > /etc/sudoers

WORKDIR /home/wwwroot/symfony

EXPOSE 9000

CMD if [ $APP_ENV = 'prod' ]; \
then \
    ./install.prod.sh; \
else \
    ./install.dev.sh; \
fi; php-fpm;