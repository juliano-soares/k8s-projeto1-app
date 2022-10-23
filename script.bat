echo "Criando as imagens....."

docker build -t julianosoares/projeto-backend:1.0 backend/.
docker build -t julianosoares/projeto-database:1.0 database/.

echo "Realizando o push das imagens....."

docker push julianosoares/projeto-backend:1.0
docker push julianosoares/projeto-database:1.0

