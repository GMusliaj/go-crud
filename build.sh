#!/bin/bash

go mod init *
go mod tidy

docker build . -t go-dock
