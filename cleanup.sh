#!/bin/bash

ERROR_MSG="Please choose the mode you ran the suite in: \\n a) Unsecure: sh cleanup.sh unsecure \\n b) Secure: sh cleanup.sh secure"

if [ $# -eq 0 ]; then
  echo "$ERROR_MSG"

elif [ $# -eq 1 ]; then
  if [ "$1" = "unsecure" ]; then

    echo "------------------------------------------------------------"
    echo "############################### Cleaning up suite that was run in UNSECURE mode..."
    echo "------------------------------------------------------------"

    echo "......"

    echo "------------------------------------------------------------"
    echo "############################### Stopping and removing containers..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.unsecure.yml down -v
    docker-compose -f logging/docker-compose.unsecure.yml down -v

  elif [ "$1" = "secure" ]; then

    echo "------------------------------------------------------------"
    echo "############################### Cleaning up suite that was run in SECURE mode..."
    echo "------------------------------------------------------------"

    echo "......"

    echo "------------------------------------------------------------"
    echo "############################### Stopping and removing containers..."
    echo "------------------------------------------------------------"
    docker-compose -f monitoring/docker-compose.secure.yml down -v
    docker-compose -f logging/docker-compose.secure.yml down -v
    docker-compose -f proxy/docker-compose.yml down -v

  else
    echo "$ERROR_MSG"
    exit
  fi

  echo "------------------------------------------------------------"
  echo "############################### Removing network..."
  echo "------------------------------------------------------------"
  docker network rm monitoring_logging

  echo "------------------------------------------------------------"
  echo "############################### Output from 'docker ps -a'..."
  echo "------------------------------------------------------------"
  docker ps -a

  echo "------------------------------------------------------------"
  echo "############################### Output from 'docker volume ls'..."
  echo "------------------------------------------------------------"
  docker volume ls

  echo "------------------------------------------------------------"
  echo "############################### Output from 'docker network ls'..."
  echo "------------------------------------------------------------"
  docker network ls

  echo "------------------------------------------------------------"
  echo "############################### Finished. Everything's cleaned up."
  echo "------------------------------------------------------------"

else
  echo "$ERROR_MSG"
fi
