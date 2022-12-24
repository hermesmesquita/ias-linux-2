#!/bin/bash

echo "Atualizando ambiente..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip wget curl systemctl -y
echo "✅"
echo ""

echo "Iniciando Apache..."
systemctl start apache2
echo "✅"

echo "Descendo aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -o main.zip
rm main.zip
cd linux-site-dio-main
mv * /var/www/html
echo "✅"
echo ""

echo "Pronto!"

