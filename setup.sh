echo ---------------------------

echo --------------------------- Setting domain and password...
export DOMAIN=$1
export PASSWORD=$2

echo --------------------------- Setting passwords for basic auth...
htpasswd -bc storage/nginx-proxy/htpasswd/kibana.$1 admin $2
# htpasswd -bc storage/nginx-proxy/htpasswd/grafana.$1 admin $2 # See: https://github.com/grafana/grafana/issues/7090
htpasswd -bc storage/nginx-proxy/htpasswd/prometheus.$1 admin $2
htpasswd -bc storage/nginx-proxy/htpasswd/alertmanager.$1 admin $2

echo --------------------------- Creating separate docker network...
docker network create --subnet=192.16.0.0/24 monitoring_logging

echo --------------------------- Pulling images...
docker-compose -f docker-compose.yml -f proxy/docker-compose.yml -f logging/docker-compose.yml -f monitoring/docker-compose.yml pull

echo --------------------------- Building images...
docker-compose -f docker-compose.yml -f proxy/docker-compose.yml -f logging/docker-compose.yml -f monitoring/docker-compose.yml build

echo --------------------------- Starting containers...
docker-compose -f docker-compose.yml -f proxy/docker-compose.yml -f logging/docker-compose.yml -f monitoring/docker-compose.yml up --force-recreate

echo --------------------------- Unsetting exported environment variables...
unset DOMAIN
unset PASSWORD

echo --------------------------- Output from 'docker ps'...
docker ps

echo ---------------------------
