#!/bin/bash

systempath=$1
romdir=$2
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

is_directory_empty() {
    [ -z "$(ls -A "$1")" ]
}

if [ -e "$1/../product" ] || [ -L "$1/../product" ]; then
    if [ -d "$1/../product" ] && ! is_directory_empty "$1/../product"; then
        mkdir -p "$1/product"
        cp -r "$1/../product"/. "$1/product"/ 2>/dev/null
    fi
    rm -rf "$1/../product"
    ln -s /system/product "$1/../product"
fi

if [ -e "$1/../system_ext" ] || [ -L "$1/../system_ext" ]; then
    if [ -d "$1/../system_ext" ] && ! is_directory_empty "$1/../system_ext"; then
        mkdir -p "$1/system_ext"
        cp -r "$1/../system_ext"/. "$1/system_ext"/ 2>/dev/null
    fi
    rm -rf "$1/../system_ext"
    ln -s /system/system_ext "$1/../system_ext"
fi
