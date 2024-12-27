#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# Copy changes in system folder
rsync -ra $thispath/system/ $1/
