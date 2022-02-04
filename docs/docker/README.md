# Getting started with docker and docker-compose


1. get docker. 
```
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
For Windows or Mac OS, please get Docker Desktop from https://www.docker.com/products/docker-desktop

2. get docker compoose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo docker-compose --version
```
For Windows or Mac OS, install Compose https://docs.docker.com/compose/install/


# Follow docker compose tutorial
https://docs.docker.com/compose/gettingstarted/