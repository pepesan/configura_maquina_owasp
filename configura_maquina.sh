#!/bin/bash

# instalamos y actualizamos el sistema
sudo apt update
sudo apt dist-upgrade -y


# Añadimos el usuario y su contraseña
echo Pon la contraseña alumno
sudo adduser alumno
sudo passwd alumno

# instalamos el escritorio
sudo apt update
sudo apt install ubuntu-desktop

# instalamos el servidor xrdp

sudo apt install xrdp

sudo cp files/xrdp.ini /etc/xrdp/xrdp.ini

sudo systemctl restart xrdp

sudo ufw allow 3389/tcp

xhost +