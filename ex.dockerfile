# Utiliser l'image php 8.2 du docker hub comme image de base

FROM php:8.2-alpine

# Installer apk add (paquets dans alpine) git node.js et npm

RUN apk add --no-cache git nodejs npm

# Cloner le repo gitlab du projet

RUN git clone https://gitlab.com/docusland-courses/php/sample-laravel.git

# Installer les extensions de PHP

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions
RUN install-php-extensions pdo_sqlite intl zip

# Installer Composer pour PHP

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer