#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/app/MiuiAudioMonitor
rm -rf $1/app/MiuiPrintSpoolerBeta

rm -rf $1/product/app/AiAsstVision
rm -rf $1/product/app/AnalyticsCore
rm -rf $1/product/app/AutoTest
rm -rf $1/product/app/CarWith
rm -rf $1/product/app/com.xiaomi.macro
rm -rf $1/product/app/HybridPlatform
rm -rf $1/product/app/mi_connect_service_t
rm -rf $1/product/app/MiBugReport
rm -rf $1/product/app/MiLink
rm -rf $1/product/app/MINextpay
rm -rf $1/product/app/MITSMClientNoneNfc
rm -rf $1/product/app/MIUIAiasstService
rm -rf $1/product/app/MIUIDeskClock
rm -rf $1/product/app/MIUIFileExplorer
rm -rf $1/product/app/MIUIFrequentPhrase
rm -rf $1/product/app/MIUIgreenguard
rm -rf $1/product/app/MIUIReporter
rm -rf $1/product/app/MIUISuperMarket
rm -rf $1/product/app/OtaProvision
rm -rf $1/product/app/PaymentService
rm -rf $1/product/app/SogouInput
rm -rf $1/product/app/Updater
rm -rf $1/product/app/talkback
rm -rf $1/product/app/VoiceAssistAndroidT
rm -rf $1/product/app/XiaoaiRecommendation
rm -rf $1/product/priv-app/Gallery_T_CN
rm -rf $1/product/priv-app/MiGameCenterSDKService
rm -rf $1/product/priv-app/MIService
rm -rf $1/product/priv-app/MIUIBrowser
rm -rf $1/product/priv-app/MIUICalendar
rm -rf $1/product/priv-app/MIUIContentExtension_S
rm -rf $1/product/priv-app/MiuiExtraPhoto
rm -rf $1/product/priv-app/MIUIMusicT
rm -rf $1/product/priv-app/MIUIQuickSearchBox
rm -rf $1/product/priv-app/MIUIVideo
rm -rf $1/product/priv-app/MIUIYellowPage

rm -rf $1/data-app/*
rm -rf $1/product/data-app/*
