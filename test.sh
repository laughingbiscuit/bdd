#!/bin/sh

set -e

# set target dir
# TODO merge framework and project feature dirs
# run cucumber
cucumber --publish-quiet "$@"
