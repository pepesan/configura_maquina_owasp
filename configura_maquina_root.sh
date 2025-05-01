#!/bin/bash

# instalamos y actualizamos el sistema
sudo apt update
sudo apt dist-upgrade -y


# Añadimos el usuario y su contraseña
echo Pon la contraseña alumno
sudo adduser alumno
sudo passwd alumno
sudo usermod -aG sudo alumno
newgrp sudo

# instalamos el escritorio
sudo apt update
sudo apt install -y ubuntu-desktop

# instalamos el servidor xrdp

sudo apt install xrdp

sudo cp files/startwm.sh /etc/xrdp/startwm.sh

sudo systemctl restart xrdp

sudo ufw allow 3389/tcp


# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get -y install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker Engine:
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add the user to the docker group
sudo groupadd docker
sudo usermod -aG docker alumno

# Start Docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# recargamos la sesión de grupos
newgrp docker


sudo docker compose up -d

# terminamos
echo "Instalación terminada, ahora ejecute el resto como alumno"

