#!/bin/bash

docker run --name goblog-mysql -p 3306:3306 -v $PWD/mysql/conf.d:/etc/mysql/conf.d -v $PWD/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql