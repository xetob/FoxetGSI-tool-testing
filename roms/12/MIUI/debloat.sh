#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/app/AiAsstVision
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/CarWith
rm -rf $1/app/mab
rm -rf $1/app/MediaFeature
rm -rf $1/app/MetokNLP
rm -rf $1/app/MiConnectService*
rm -rf $1/app/MiGameService
rm -rf $1/app/MiLinkCirculate3
rm -rf $1/app/MINextPay
rm -rf $1/app/MIpay
rm -rf $1/app/MITSMClient
rm -rf $1/app/MiuiAudioMonitor
rm -rf $1/app/MiuiBugReport
rm -rf $1/app/MiuiDaemon
rm -rf $1/app/MIUIDeskClock
rm -rf $1/app/MIUIFileExplorer*
rm -rf $1/app/MIUIFrequentPhrase
rm -rf $1/app/MIUIgreenguard
rm -rf $1/app/MiuiPrintSpoolerBeta
rm -rf $1/app/MiuiSuperMarket
rm -rf $1/app/MIUPTsmService
rm -rf $1/app/MSA*
rm -rf $1/app/OtaProvision
rm -rf $1/app/PaymentService
rm -rf $1/app/SogouInput
rm -rf $1/app/Updater
rm -rf $1/app/VoiceAssist
rm -rf $1/app/VoiceTrigger
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/AutoTest
rm -rf $1/app/facebook*
rm -rf $1/app/MIRadioGlobalBuiltin
rm -rf $1/app/MIUIDeskClockGlobalS
rm -rf $1/app/MIUIMiPicks
rm -rf $1/app/MIUIVideoPlayer
rm -rf $1/app/MIUISystemAppUpdater
rm -rf $1/app/MIUIHealthGlobal

rm -rf $1/priv-app/MiGameCenterSDKService
rm -rf $1/priv-app/MiBrowser
rm -rf $1/priv-app/MirrorSmartHub2
rm -rf $1/priv-app/MIService
rm -rf $1/priv-app/MIShare
rm -rf $1/priv-app/MIUICalendar
rm -rf $1/priv-app/MIUIMusic*
rm -rf $1/priv-app/MIUIPersonalAssistant
rm -rf $1/priv-app/MIUIQuickSearchBox
rm -rf $1/priv-app/MIUIVideo
rm -rf $1/priv-app/MIUIYellowPage*

rm -rf $1/data-app/*
rm -rf $1/product/data-app/*

rm -rf $1/product/app/aiasst_service
rm -rf $1/product/app/talkback
rm -rf $1/product/priv-app/ConfigUpdater
rm -rf $1/product/app/CalendarGoogle
rm -rf $1/product/app/Chrome
rm -rf $1/product/app/Gmail2
rm -rf $1/product/app/GoogleOne
rm -rf $1/product/app/Maps
rm -rf $1/product/app/YouTube
