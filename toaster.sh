#!/usr/bin/env bash

docker run --detach --name some-mariadb --env MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=1  -p 3306:3306 mariadb:latest
mysql -u root -h 127.0.0.1 <dbcreate.sql
docker build -t my-wordpress:latest .
docker run --name some-wordpress -p 8000:8000 my-wordpress:latest