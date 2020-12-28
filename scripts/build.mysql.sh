#!/bin/bash

## Stop & Remove any previously added mysql containers
docker stop go-crud-mysql
docker rm -v go-crud-mysql

## Cleanup the data directory
rm -r mysql/data

## Run the docker container
docker run --name go-crud-mysql -p 3306:3306 -v $PWD/mysql/conf.d:/etc/mysql/conf.d -v $PWD/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql

## Wait for the mysql container to start and then proceed below with the db initialization
sleep 20

## Create the db
cat create.sql | docker exec -i go-crud-mysql mysql -u root -p --password=root