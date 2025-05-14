#!/bin/bash

# Descarga del respositorio de código de ejemplos
git clone https://github.com/pepesan/owasp-php-dev-docker.git
cd owasp-php-dev-docker

# puesta en marcha del entorno
./pdd init

# Lanzamiento del entorno
./pdd start

echo "Ya puedes abrir la url http://localhost en tu navegador"
