#!/usr/bin/env bash

docker build . -t uempfelccc/whackapod-game --platform amd64
docker push uempfelccc/whackapod-game
