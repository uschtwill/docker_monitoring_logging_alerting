echo ---------------------------

echo --------------------------- Stopping and removing containers...
docker-compose -p whitebox -f docker-compose.yml -f proxy/docker-compose.yml -f logging/docker-compose.yml -f monitoring/docker-compose.yml down -v

echo --------------------------- Removing network...
docker network rm monitoring_logging

echo --------------------------- Output from \'docker ps -a\'...
docker ps -a

echo --------------------------- Output from \'docker volume ls\'...
docker volume ls

echo --------------------------- Output from \'docker network ls\'...
docker network ls

echo ---------------------------
