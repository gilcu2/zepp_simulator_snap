#!/usr/bin/env bash

WGET_OPT="-c -w 5 -t 3"

SIMULATOR_CDN="https://upload-cdn.huami.com/zeppos/simulator/download"
SIMULATOR_VER=`curl -fsSL ${SIMULATOR_CDN}/version.json?t=$(date +%s) | awk -F'["]' '{print $4}'`
SIMULATOR_DEB="simulator_$(echo $SIMULATOR_VER)_amd64.deb"
SIMULATOR_DEB_FILE="$SIMULATOR_DEB"
if [ ! -f $SIMULATOR_DEB_FILE ]; then
    wget $WGET_OPT -O $SIMULATOR_DEB_FILE "$SIMULATOR_CDN/$SIMULATOR_DEB"
fi