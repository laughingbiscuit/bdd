#!/bin/sh

set -e

# set target dir
# TODO merge framework and project feature dirs
# run cucumber
rm -rf result/ && mkdir -p result
cucumber --publish-quiet "$@" -f pretty -f json -o result/report.json
