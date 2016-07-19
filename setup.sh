docker network create --subnet=192.16.0.0/24 monitoring_logging
cd data-containers
docker-compose up -d
docker stop elasticsearch_storage grafana_storage prometheus_storage
cd ..
docker-compose up -d
echo ---------------------------
docker ps
echo ---------------------------
open http://localhost:3000/datasources/new
open http://localhost:3000/dashboard/new?editview=import
open http://localhost:3000/dashboard/new?editview=import

