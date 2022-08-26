#!/usr/bin/env bash

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/billiam/cncjs-pendant-streamdeck/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
ARTIFACT_URL="https://github.com/billiam/cncjs-pendant-streamdeck/releases/download/$LATEST_VERSION/cncjs-pendant-streamdeck.zip"
wget $ARTIFACT_URL -P /tmp
unzip -o /tmp/cncjs-pendant-streamdeck.zip -d /home/pi/
rm /tmp/cncjs-pendant-streamdeck.zip
