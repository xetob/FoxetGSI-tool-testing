#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/product/app/CalendarGoogle
rm -rf $1/product/app/Gmail2
rm -rf $1/product/app/GoogleOne
rm -rf $1/product/app/GameCenterGlobal
rm -rf $1/product/app/MIUIHealthGlobal
rm -rf $1/product/app/MIUIVideoPlayer
rm -rf $1/product/app/Maps
rm -rf $1/product/app/MSA-Global
rm -rf $1/product/app/Updater
rm -rf $1/product/app/YouTube
rm -rf $1/product/app/MIpay

rm -rf $1/product/priv-app/AppBox
rm -rf $1/product/priv-app/AppCenter
rm -rf $1/product/priv-app/GoogleAssistant
rm -rf $1/product/priv-app/Velvet
rm -rf $1/product/priv-app/MIUIMusicGlobal

rm -rf $1/product/data-app/GameCenter
rm -rf $1/product/data-app/Huanji
rm -rf $1/product/data-app/MIDrive
rm -rf $1/product/data-app/MIFinance
rm -rf $1/product/data-app/MIDrop
rm -rf $1/product/data-app/MiShop
rm -rf $1/product/data-app/MiRadio
rm -rf $1/product/data-app/MICOMMUNITY_OVERSEA
rm -rf $1/product/data-app/MiGalleryLockScreenGlobalT
rm -rf $1/product/data-app/MIGalleryLockscreen-T
rm -rf $1/product/data-app/MIMediaEditorGlobal
rm -rf $1/product/data-app/MIMediaEditor
rm -rf $1/product/data-app/MiuiCompass
rm -rf $1/product/data-app/MiuiScanner
rm -rf $1/product/data-app/MIUINotes
rm -rf $1/product/data-app/MIUICompassGlobal
rm -rf $1/product/data-app/MIUISoundRecorderTargetSdk30Global
rm -rf $1/product/data-app/MIUISoundRecorderTargetSdk30
rm -rf $1/product/data-app/MIUIEmail
rm -rf $1/product/data-app/MIUIDuokanReader
rm -rf $1/product/data-app/MIUICleanMaster
rm -rf $1/product/data-app/MIUIYoupin
rm -rf $1/product/data-app/SmartHome
rm -rf $1/product/data-app/SmartTravel
rm -rf $1/product/data-app/Duo
rm -rf $1/product/data-app/Drive
rm -rf $1/product/data-app/GoogleNews
rm -rf $1/product/data-app/Podcasts
rm -rf $1/product/data-app/Videos
rm -rf $1/product/data-app/YTMusic
rm -rf $1/product/data-app/XMRemoteController
rm -rf $1/product/data-app/wps-lite
rm -rf $1/product/data-app/Health
rm -rf $1/product/data-app/BaiduIME

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
rm -rf $1/product/app/MIUIMusic*

rm -rf $1/product/priv-app/Velvet
rm -rf $1/product/priv-app/MIUIGlobalMinusScreenWidget

rm -rf $1/product/data-app/*
