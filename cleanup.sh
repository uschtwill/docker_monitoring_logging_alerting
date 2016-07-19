docker-compose down
cd data-containers
docker-compose down
docker network rm monitoring_logging
docker volume rm datacontainers_elasticsearch_storage datacontainers_grafana_storage datacontainers_prometheus_storage
echo ---------------------------
docker ps -a
echo ---------------------------
docker volume ls
echo ---------------------------
docker network ls
echo ---------------------------

