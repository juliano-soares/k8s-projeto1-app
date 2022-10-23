#!/bin/bash

echo "Criando as imagens....."

docker build -t marcioteixeira/projeto-backend:1.0 backend/.
docker build -t marcioteixeira/projeto-database:1.0 database/.

echo " Realizando o push das imagens......"

docker push marcioteixeira/projeto-backend:1.0
docker push marcioteixeira/projeto-database:1.0

echo "Criando serviços no cluster kubernetes...."

kubectl apply -f ./service.yml

echo "Criando os deployments......"

kubectl apply -f ./deployment.yml
