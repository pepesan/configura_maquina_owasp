#!/bin/bash

# Lanzamiento de un sistema de dependency-check de OWASP

## Empezamos descargando un respositorio de código de ejemplo

git clone https://github.com/WordPress/wordpress-develop.git
cd wordpress-develop

## Creamos los directorios de descarga de bbdd de vulnerabilidades y de informes
mkdir dc-data reports

## ejecutamos el contenedor para realizar el análisis de vulnerabilidades
docker run --rm \
  -v "$(pwd)":/src \
  -v "$(pwd)/dc-data":/usr/share/dependency-check/data \
  -v "$(pwd)/reports":/report \
  owasp/dependency-check:latest\
  --scan /src \
  --project "wordpress-develop" \
  --format "ALL" \
  --out /report

