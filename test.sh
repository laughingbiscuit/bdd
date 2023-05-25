#!/bin/sh

set -e

# set target dir
# TODO merge framework and project feature dirs
# run cucumber
mkdir -p result
cucumber --publish-quiet "$@" -f pretty -f json -o report.json || true
npm run report
