#!/bin/bash

cd /root
# Descarga del repositorio de código de ejemplos
git clone https://github.com/pepesan/owasp-php-dev-docker.git
cd owasp-php-dev-docker

# puesta en marcha del entorno
./pdd init

# Lanzamiento del entorno
echo "Arrancando los servicios de docker"
./pdd start
echo "Parando los servicios de docker"
./pdd stop


echo "Cuando quieras ejecuta ./pdd start y ya puedes abrir la url http://localhost en tu navegador"

