#!/bin/bash
sudo apt update
mkdir Windows 
cd Windows
mkdir Namizje Dokumenti Prenosi Slike Videi

for stevec in 1 2 3 4 5
do '\r'
mkdir mapa$stevec
done

sleep 5

echo -n "Enter name of text file: "; read FILENAME
while read USER; do
   echo "$USER"
  sudo  useradd -m "${USER}" -d /users/"${USER}"
   sudo  usermod -aG sudo -m "${USER}"
done < "${FILENAME}"


sudo apt update && upgrade


sudo apt-get install git
sudo wget http://nginx.org/download/nginx-1.21.1.tar.gz
tar -xf nginx-1.21.1.tar.gz
cd nginx-1.21.1
./configure
sleep 5
cd ..
sudo apt install net-tools -y


sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo docker run hello-world
