#!/bin/bash

go mod init main
go mod tidy

docker build . -t go-crud
