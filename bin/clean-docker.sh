#!/bin/sh

docker system prune -f
docker volume prune -f
docker image prune -f
