#!/bin/bash

cat scripts/create.sql | docker exec -i go-crud-mysql mysql -u root -p --password=root