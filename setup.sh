#!/bin/bash

ERROR_MSG="Please chose one of the two modes: \\n a) Unsecure: sh setup.sh unsecure \\n b) Secure: sh setup.sh secure \$DOMAIN \$VERY_STRONG_PASSWORD"

if [ $# -eq 0 ]; then
  echo $ERROR_MSG

elif [ $# -eq 1 ]; then
  if [ "$1" = "unsecure" ]; then

    echo "------------------------------------------------------------"
    echo "############################### Installing suite in UNSECURE mode."
    echo "############################### This means |NO| SSL/HTTPS, |NO| (basic) authentication but |YES| port forwading from the containers to the host machine. Only use this, when you're running this locally, on a virtual machine or in similarly safe conditions."
    echo "############################### This excludes all machines that are directly accesible from the internet."
    echo "############################### Hit enter to continue or Ctrl-C to abort..."
    read _
    echo "############################### Commencing!"
    echo "------------------------------------------------------------"

    echo "......"

    echo "------------------------------------------------------------"
    echo "############################### Creating separate docker network..."
    echo "------------------------------------------------------------"
    docker network create --subnet=172.16.0.0/24 monitoring_logging

    echo "------------------------------------------------------------"
    echo "############################### Pulling images..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.unsecure.yml pull
    docker-compose -f logging/docker-compose.unsecure.yml pull

    echo "------------------------------------------------------------"
    echo "############################### Building images..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.unsecure.yml build
    docker-compose -f logging/docker-compose.unsecure.yml build

    echo "------------------------------------------------------------"
    echo "############################### Starting monitoring and logging container groups..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.unsecure.yml up --force-recreate -d
    docker-compose -f logging/docker-compose.unsecure.yml up --force-recreate -d

    echo "------------------------------------------------------------"
    echo "############################### Output from 'docker ps'..."
    echo "------------------------------------------------------------"
    docker ps

    echo "------------------------------------------------------------"
    echo "############################### Finished - you're all set up. Use cleanup.sh to uninstall the suite."
    echo "------------------------------------------------------------"

   else
    echo $ERROR_MSG
  fi

elif [ $# -eq 3 ]; then
  if [ "$1" = "secure" ]; then

    export DOMAIN=$2
    export PASSWORD=$3

    echo "------------------------------------------------------------"
    echo "############################### Installing suite in SECURE mode."
    echo "############################### This means |YES| SSL/HTTPS, |YES| (basic) authentication but |NO| port forwading from the containers to the host machine. This mode is for running the suite out in the open, but won't work on machines that are not reachable directly via the internet."
    echo "############################### Also make sure you already set up DNS entries for grafana.${DOMAIN}, kibana.${DOMAIN}, prometheus.${DOMAIN} and alertmanager.${DOMAIN}."
    echo  "############################### If you haven't done that, do it first. Hit enter to continue or Ctrl-C to abort..."
    read _
    echo "############################### Commencing!"
    echo "------------------------------------------------------------"

    echo "......"

    echo "------------------------------------------------------------"
    echo "############################### Setting passwords for basic auth..."
    echo "------------------------------------------------------------"
    mkdir -p storage/nginx-proxy/htpasswd
    htpasswd -bc storage/nginx-proxy/htpasswd/kibana.$DOMAIN admin $PASSWORD
    htpasswd -bc storage/nginx-proxy/htpasswd/prometheus.$DOMAIN admin $PASSWORD
    htpasswd -bc storage/nginx-proxy/htpasswd/alertmanager.$DOMAIN admin $PASSWORD

    echo "------------------------------------------------------------"
    echo "############################### Creating separate docker network..."
    echo "------------------------------------------------------------"
    docker network create --subnet=172.16.0.0/24 monitoring_logging

    echo "------------------------------------------------------------"
    echo "############################### Pulling images..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.secure.yml pull
    docker-compose -f logging/docker-compose.secure.yml pull
    docker-compose -f proxy/docker-compose.yml pull

    echo "------------------------------------------------------------"
    echo "############################### Building images..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.secure.yml build
    docker-compose -f logging/docker-compose.secure.yml build
    docker-compose -f proxy/docker-compose.yml build

    echo "------------------------------------------------------------"
    echo "############################### Starting monitoring and logging container groups..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.secure.yml up --force-recreate -d
    docker-compose -f logging/docker-compose.secure.yml up --force-recreate -d


    echo "------------------------------------------------------------"
    echo "###############################  Waiting 10 seconds for the monitoring and logging container groups to settle in before starting proxy containers..."
    echo "------------------------------------------------------------"
    sleep 10

    echo "------------------------------------------------------------"
    echo "############################### Starting proxy container group..."
    echo "------------------------------------------------------------"
    docker-compose -f proxy/docker-compose.yml up --force-recreate -d

    echo "------------------------------------------------------------"
    echo "############################### Tailing the logs of the nginx-letsencrypt container through the creation of the Diffie-Hellman group and the initial setup of your SSL certificates..."
    echo "------------------------------------------------------------"
    echo "xxxxxxxxxxxx Start of logs, please be patient. Presumably you can make some noise on a different shell to help create some entropy during the creation of the DH parameters..."
    sh -c 'docker logs -f proxy_nginx-letsencrypt_1 | { sed "/Reloading nginx proxy.../ q" && kill $$ ;}'
    echo "xxxxxxxxxxxx End of logs."

    echo "------------------------------------------------------------"
    echo "############################### Restarting proxy container group..."
    echo "------------------------------------------------------------"
    docker-compose -f proxy/docker-compose.yml up --force-recreate -d

    echo "------------------------------------------------------------"
    echo "############################### Output from 'docker ps'..."
    echo "------------------------------------------------------------"
    docker ps

    echo "------------------------------------------------------------"
    echo "############################### Finished - you're all set up. You can now go to grafana.${DOMAIN}, kibana.${DOMAIN}, prometheus.${DOMAIN} and alertmanager.${DOMAIN} to check out your metrics, logs and alerts. Use cleanup.sh to uninstall the suite."
    echo "------------------------------------------------------------"

  else
    echo $ERROR_MSG
  fi

else
  echo $ERROR_MSG
fi
