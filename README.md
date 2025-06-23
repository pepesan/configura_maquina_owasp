# Instalación de máquina para OWASP

## Requisitos

###  Instalación de paquetes
```bash
sudo apt-get install -y git 
git clone https://github.com/pepesan/configura_maquina_owasp.git
cd configura_maquina_owasp
```

## Ejecutable principal
```bash
./configura_maquina_root.sh
```

## Servicios arrrancados
- [juice-shop](http://127.0.0.1:3000/)
- [Webgoat](http://127.0.0.1:8081/)
- [web-dvwa](http://127.0.0.1:80/)

## Entrar por RDP al servidor
- IP de servidor
- usuario: alumno
- contraseña: alumno
- Dimensiones del RDP: 1920x1080

## Abre una terminal RDP y ejecuta
```bash
xhost +
```

## Probar OWASP ZAP
```bash
zap.sh
```

