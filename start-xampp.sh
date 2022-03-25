#! /bin/env bash
docker run --detach -ti -p 80:80 -p 443:443 -p 3306:3306 --name xampp \
	-v /media/leonardo/various/esercizi-uni/prog-web/data:/www \
	-v /media/leonardo/various/esercizi-uni/prog-web/data/db:/opt/lampp/var/mysql/ \
	--network=tomcat-docker_xampp-tomcat -e LANG=C.UTF-8 \
	my/xampp
