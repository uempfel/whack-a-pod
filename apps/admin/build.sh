#!/usr/bin/env bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o dist/main main.go kubernetes.go
docker build . -t uempfelccc/whackapod-admin --platform amd64
docker push uempfelccc/whackapod-admin
