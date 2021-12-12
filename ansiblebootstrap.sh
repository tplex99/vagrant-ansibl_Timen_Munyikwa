#!/bin/bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update 

#sudo apt install apache2 -y
#sudo mkdir /test

sudo apt-get install -y ansible
sudo apt install -y sshpass

sudo apt install python3-pip -y
sudo pip3 install ansible 

exit
