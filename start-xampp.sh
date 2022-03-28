#! /bin/env bash
CONTAINER_NAME=xampp

docker run --detach -ti -p 80:80 -p 443:443 -p 3306:3306 --name ${CONTAINER_NAME} \
	-v /media/leonardo/various/esercizi-uni/prog-web/data:/www \
	--mount "source=${CONTAINER_NAME}-vol,destination=/opt/lampp/var/mysql/" \
	--network=tomcat-docker_xampp-tomcat -e LANG=C.UTF-8 \
	my/xampp
