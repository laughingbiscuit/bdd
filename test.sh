#!/bin/sh

set -e

# set target dir
# TODO merge framework and project feature dirs
# run cucumber

docker rm -f browser
docker run --net=host --name browser -d --shm-size="2g" selenium/standalone-chrome:latest
sleep 5
mkdir -p result
cucumber --publish-quiet "$@" -f pretty -f json -o report.json || true
npm run report
