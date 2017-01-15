#!/bin/bash
set -e

echo "------------------------------------------------------------"
echo "############################### Installing and setting prerequisites for setting up the suite..."
echo "------------------------------------------------------------"

echo "......"


echo "------------------------------------------------------------"
echo "############################### Downloading and setting up Docker..."
echo "------------------------------------------------------------"
curl -sSL https://get.docker.com/ | sh

echo "------------------------------------------------------------"
echo "############################### Downloading docker-compose..."
echo "------------------------------------------------------------"
curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

echo "------------------------------------------------------------"
echo "############################### Making docker-compose executable..."
echo "------------------------------------------------------------"
chmod +x /usr/local/bin/docker-compose

echo "------------------------------------------------------------"
echo "############################### Installing apache2-utils so we have at our disposal htpasswd..."
apt-get install apache2-utils -y --install-recommends
echo "------------------------------------------------------------"

echo "------------------------------------------------------------"
echo "############################### Finished. You can now set up the suite."
echo "------------------------------------------------------------"
