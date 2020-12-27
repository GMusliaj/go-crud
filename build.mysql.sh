#!/bin/bash

## Stop & Remove any previously added mysql containers
docker stop goblog-mysql
docker rm -v goblog-mysql

## Run the docker container
docker run --name goblog-mysql -p 3306:3306 -v $PWD/mysql/conf.d:/etc/mysql/conf.d -v $PWD/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql

## Create the db
cat create.sql | docker exec -i goblog-mysql mysql -u root -p --password=root