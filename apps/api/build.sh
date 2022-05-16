#!/usr/bin/env bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o dist/main main.go
docker build . -t uempfelccc/whackapod-api --platform amd64
docker push uempfelccc/whackapod-api
