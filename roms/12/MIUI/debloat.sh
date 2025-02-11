#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/product/app/AnalyticsCore
rm -rf $1/product/app/Chrome*
rm -rf $1/product/app/Drive
rm -rf $1/product/app/GameCenter*
rm -rf $1/product/app/Gmail*
rm -rf $1/product/app/Meet
rm -rf $1/product/app/Maps
rm -rf $1/product/app/MiuiBugReport*
rm -rf $1/product/app/MIUIMiPicks
rm -rf $1/product/app/MIUISystemAppUpdater
rm -rf $1/product/app/MIUIVideoPlayer
rm -rf $1/product/app/MSA*
rm -rf $1/product/app/Photos
rm -rf $1/product/app/Videos
rm -rf $1/product/app/YouTube
rm -rf $1/product/app/YTMusic
rm -rf $1/product/app/Updater

rm -rf $1/product/priv-app/Velvet
rm -rf $1/product/priv-app/MIUIGlobalMinusScreenWidget

rm -rf $1/product/data-app/*
