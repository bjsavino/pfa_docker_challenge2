# Desafio Programa FullCycle de Aceleração: Docker

## Desafio

Crie um programa utilizando sua linguagem de programação favorita que faça uma listagem simples do nome de alguns módulos do curso Full Cycle os trazendo de um banco de dados MySQL. Gere a imagem desse container e a publique no DockerHub.

Gere uma imagem do nginx que seja capaz que receber as solicitações http e encaminhá-las para o container.

Crie um repositório no github com todo o fonte do programa e das imagens geradas.

Crie um arquivo README.md especificando quais comandos precisamos executar para que a aplicação funcione recebendo as solicitações na porta http://localhost:8080 de nosso computador. Lembrando que NÃO utilizaremos Docker-compose nesse desafio.

## ⏩ Quickstart

Você pode executar o script <strong>init.sh</strong> para iniciar de maneira mais simples. Caso sinta necessidade, siga os comandos em execução para iniciar um container de cada vez.
```
./init.sh
```
## ✍ Execução Manual
Primeiramente, será necessário criar a network para que os containers consigam se conectar entre si.

```
docker network create pfa-docker 
```

Segundo passo é rodar cada imagem abaixo:

### Banco de Dados MYSQL

```
docker run --rm -d --network pfa-docker --name pfa-mysql bjsavino/pfa-mysql
```

### Aplicação

```
docker run --rm -d --network pfa-docker --name pfa-nodeserver bjsavino/pfa-nodeserver
```

### NGINX

```
docker run --rm -d --network pfa-docker -p 8080:80 --name pfa-nginx bjsavino/pfa-nginx
```

Ao final, você poderá testar a aplicação em http://localhost:8080

</br>

## 🚧 Construindo imagens (opcional)
Você pode executar os comandos acima e baixar as imagens diretamente do dockerHub. Se, por algum motivo, for necessário recriar as imagens, siga os comando abaixo

```
docker build -t bjsavino/pfa-mysql ./mysql  
docker build -t bjsavino/pfa-nodeserver ./node
docker build -t bjsavino/pfa-nginx ./nginx  
```
