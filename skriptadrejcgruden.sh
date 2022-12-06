#!/bin/bash
sudo apt update
mkdir Windows '\n'
cd Windows '\n'
mkdir Namizje Dokumenti Prenosi Slike Videi  '\n'

for stevec in 1 2 3 4 5 '\n'
do '\n'
mkdir mapa$stevec 
done '\n'

sleep 5

echo -n "Enter name of text file: "; read FILENAME '\n'
while read USER; do '\n'
  sudo  useradd -m "${USER}" -d /users/"${USER}" '\n'
   sudo  usermod -aG sudo -m "${USER}" '\n'
done < "${FILENAME}"  '\n'


sudo apt update && upgrade '\n'


sudo apt-get install git '\n'
sudo wget http://nginx.org/download/nginx-1.21.1.tar.gz '\n'
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
