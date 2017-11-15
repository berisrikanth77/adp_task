#!/bin/bash
sudo yum check-update -y

sudo yum install -y curl

sudo yum remove docker docker-engine -y

curl -fsSL https://get.docker.com/ | sh

sudo yum update -y

sudo systemctl start docker

sudo systemctl status docker

sudo systemctl enable docker

sudo yum install docker-ce -y

sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

cd 

cd vagrant_data

sudo docker build -t nginx:latest /home/vagrant/vagrant_data

sudo docker run -it -d nginx /bin/bash && service nginx start
