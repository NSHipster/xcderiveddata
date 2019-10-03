#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

if ! [ -x "$(command -v xcodebuild)" ]; then
    echo 'Error: xcodebuild is not installed.' >&2
    exit 1
fi

xcodebuild -showBuildSettings $@ |
    grep -m 1 "BUILD_DIR" |
    grep -oEi "\/.*" |
    sed 's#/Build/Products##'
