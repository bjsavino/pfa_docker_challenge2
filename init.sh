#!/bin/bash
#docker run  -it --rm  --network pfa-docker --name nodeserver -p 4000:3000 -v $(pwd)/node:/usr/src/app node:14 bash && cd /usr/src/app

### Cria Network
echo "Criando NETWORK"
docker network create pfa-docker

### Banco de Dados MYSQL
echo "Iniciando container do MYSQL"
docker run --rm -d --network pfa-docker --name pfa-mysql bjsavino/pfa-mysql
sleep 5

### Aplicação NodeServer
echo "Iniciando container da aplicação"
docker run --rm -d --network pfa-docker --name nodeserver bjsavino/pfa-nodeserver
sleep 5

### NGINX
echo "Iniciando container do NGINX"
docker run --rm -d --network pfa-docker -p 8080:80 --name pfa-nginx bjsavino/pfa-nginx
sleep 5

echo "Pronto! Teste em http://localhost:8080"


