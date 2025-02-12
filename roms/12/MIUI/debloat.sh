#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# for old phones
# for miui-cn
rm -rf $1/app/cit
rm -rf $1/app/MiuiCompass
rm -rf $1/app/MiuiScreenRecorder
rm -rf $1/app/MiuiVideoGlobal
rm -rf $1/app/Notes
rm -rf $1/app/PaymentService
rm -rf $1/app/Calculator
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/BasicDreams
rm -rf $1/app/BookmarkProvider
rm -rf $1/app/MiuiBugReport
rm -rf $1/app/CatchLog
rm -rf $1/app/Mipay
rm -rf $1/app/HybridAccessory
rm -rf $1/app/HybridPlatform
rm -rf $1/app/Joyose
rm -rf $1/app/MiLinkService
rm -rf $1/app/KSICibaEngine
rm -rf $1/app/MiuiDaemon
rm -rf $1/app/BuiltInPrintService
rm -rf $1/app/PrintSpooler
rm -rf $1/app/SoterService
rm -rf $1/priv-app/Backup
rm -rf $1/priv-app/Browser
rm -rf $1/priv-app/Calendar
rm -rf $1/priv-app/CleanMaster
rm -rf $1/priv-app/MiRecycle
rm -rf $1/priv-app/MiuiScanner
rm -rf $1/priv-app/MiWebView
rm -rf $1/priv-app/Updater
rm -rf $1/priv-app/Velvet
rm -rf $1/priv-app/Weather
rm -rf $1/priv-app/WeatherProvider
rm -rf $1/priv-app/PersonalAssistant
rm -rf $1/priv-app/BackupAndRestore

rm -rf $1/priv-app/SoundRecorder
rm -rf $1/data-app/CleanMaster
rm -rf $1/data-app/GameCenter
rm -rf $1/data-app/Huanji
rm -rf $1/data-app/MiDrive
rm -rf $1/data-app/MiFinance 
rm -rf $1/data-app/MiuiCompass
rm -rf $1/data-app/MiuiScanner
rm -rf $1/data-app/Notes
rm -rf $1/data-app/SmartTravel
rm -rf $1/data-app/Weather

 # for  new also
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
rm -rf $1/product/data-app/MiGalleryLockScreenGlobal*
rm -rf $1/product/data-app/MIGalleryLockscreen*
rm -rf $1/product/data-app/MIMediaEditorGlobal
rm -rf $1/product/data-app/MIMediaEditor
rm -rf $1/product/data-app/MiuiCompass
rm -rf $1/product/data-app/MiuiScanner
rm -rf $1/product/data-app/MIUINotes
rm -rf $1/product/data-app/MIUICompassGlobal
rm -rf $1/product/data-app/MIUISoundRecorder*
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


