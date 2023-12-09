#!/usr/bin/env bash

set -e

PATH_ROOT=${PWD}
PATH_COMM=${PATH_ROOT}/common/
PATH_NODE=${PATH_ROOT}/node_modules/
PRJ_NAME=${PATH_ROOT##*/}

if [ ! -d ${PATH_COMM} ]; then
    echo "Downloading common scripts..."
    rm -rf ${PATH_COMM}
    git clone git@github.com:oscc-web/oscc-common.git ${PATH_COMM}
else
    echo "Updating common scripts..."
    cd ${PATH_COMM}
    git pull origin main
    cd ${PATH_ROOT}
fi

if [ ! -d ${PATH_NODE} ]; then
    echo ""
    echo "Downloading Node.js packages..."
    npm install
else
    echo ""
    echo -n "Do you want to update Node.js packages? [Y/n]: "
    read choice
    if [ ${choice} == "Y" ]; then
        npm install
    fi
    echo "Already up to date."
fi
