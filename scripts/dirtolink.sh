#!/bin/bash

systempath=$1
romdir=$2
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

if [ -e "$1/../product" ]; then
    rm -rf "$1/../product"
    ln -s /system/product "$1/../product"
fi

if [ -e "$1/../system_ext" ]; then
    rm -rf "$1/../system_ext"
    ln -s /system/system_ext "$1/../system_ext"
fi
