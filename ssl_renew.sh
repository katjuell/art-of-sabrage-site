#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"

cd /home/mrcat/art-of-sabrage-site/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
