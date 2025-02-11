#!/bin/bash

LOCALDIR=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`
TOOLS_DIR="$LOCALDIR/tools"

git submodule update --init --recursive
git pull --recurse-submodules

if [[ -d "$TOOLS_DIR/Firmware_extractor" ]]; then
    git -C "$TOOLS_DIR"/Firmware_extractor fetch origin
    git -C "$TOOLS_DIR"/Firmware_extractor reset --hard origin/master
else
    echo Cloning Firmware_extractor 
    git clone -q https://github.com/AndroidDumps/Firmware_extractor.git "$TOOLS_DIR"/Firmware_extractor
fi
