#!/bin/bash

# instalamos el openjdk 17
sudo apt install -y openjdk-17-jdk
# instalamos Owasp Zap

wget https://github.com/zaproxy/zaproxy/releases/download/v2.16.1/ZAP_2_16_1_unix.sh
chmod +x ZAP_2_16_1_unix.sh
sudo ./ZAP_2_16_1_unix.sh


