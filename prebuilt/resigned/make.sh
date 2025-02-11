#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# Copy system stuffs
rsync -ra $thispath/system/ $systempath
