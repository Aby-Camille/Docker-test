# Utiliser l'image php 8.2 du docker hub comme image de base

FROM php:8.2-alpine

# Installer apk add (paquets dans alpine) git node.js et npm

RUN apk add --no-cache git nodejs npm

# Cloner le repo gitlab du projet

RUN git clone https://gitlab.com/docusland-courses/php/sample-laravel.git

# 