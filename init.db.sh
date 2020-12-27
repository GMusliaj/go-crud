#!/bin/bash

cat create.sql | docker exec -i goblog-mysql mysql -u root -p --password=root