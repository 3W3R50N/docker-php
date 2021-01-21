#!/bin/sh
#
#GET IP ADDRESS FROM DOCKER HOST
docker_host=$(/sbin/ip route|awk '/default/ { print $3 }')

mkdir ~/.ssh

#GET KEYS FROM HOST AND ADD TO known_hosts FILE.
ssh-keyscan -H $docker_host >> ~/.ssh/known_hosts
