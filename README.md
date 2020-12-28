## Overview

This is a simple CRUD written in GO running in a dockerized environment. I use mysql as DB but you can use your own. Note that the go and mysql containers are separate and they are linked together in the docker-compose file.

## Build

### Go-Crud

./scripts/build.go.sh

## Run services

docker-compose up -d


## Initialize

### MySQL Database

./scripts/init.db.sh

## Demo

http://localhost:3000
