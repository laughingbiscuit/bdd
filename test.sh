#!/bin/sh

set -e

# set target dir
# TODO merge framework and project feature dirs
# run cucumber

docker rm -f browser
docker run --name browser -d -p 4444:4444 -p 7900:7900 --shm-size="2g" selenium/standalone-chrome:latest
sleep 5
mkdir -p result
cucumber --publish-quiet "$@" -f pretty -f json -o report.json || true
npm run report
