#!/bin/bash

## cambia el fichero /etc/hosts para que el nombre de la máquina sea milocal
sudo sed -i.bak \
  's|^127\.0\.0\.1[[:space:]]\+localhost$|127.0.0.1 localhost milocal|' \
  /etc/hosts

