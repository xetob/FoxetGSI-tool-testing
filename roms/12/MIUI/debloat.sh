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
rm -rf $1/app/MIUIFileExplorer
rm -rf $1/app/MIUIFrequentPhrase
rm -rf $1/app/MIUIgreenguard
rm -rf $1/app/MiuiPrintSpoolerBeta
rm -rf $1/app/MiuiSuperMarket
rm -rf $1/app/MIUPTsmService
rm -rf $1/app/MSA
rm -rf $1/app/OtaProvision
rm -rf $1/app/PaymentService
rm -rf $1/app/SogouInput
rm -rf $1/app/Updater
rm -rf $1/app/VoiceAssist
rm -rf $1/app/VoiceTrigger

rm -rf $1/priv-app/MiGameCenterSDKService
rm -rf $1/priv-app/MiBrowser
rm -rf $1/priv-app/MirrorSmartHub2
rm -rf $1/priv-app/MIService
rm -rf $1/priv-app/MIShare
rm -rf $1/priv-app/MIUICalendar
rm -rf $1/priv-app/MIUIMusic
rm -rf $1/priv-app/MIUIPersonalAssistant
rm -rf $1/priv-app/MIUIQuickSearchBox
rm -rf $1/priv-app/MIUIVideo
rm -rf $1/priv-app/MIUIYellowPage

rm -rf $1/data-app/CleanMaster
rm -rf $1/data-app/com.dragon.read_104
rm -rf $1/data-app/com.ss.android.article.news_76
rm -rf $1/data-app/Email
rm -rf $1/data-app/MiDrive
rm -rf $1/data-app/MIMediaEditor
rm -rf $1/data-app/MIGalleryLockscreen
rm -rf $1/data-app/MiShop
rm -rf $1/data-app/MIUICalculator
rm -rf $1/data-app/MIUICompass
rm -rf $1/data-app/MIUIDriveMode
rm -rf $1/data-app/MIUIDuokanReader
rm -rf $1/data-app/MIUIGameCenter
rm -rf $1/data-app/MiuiHealth
rm -rf $1/data-app/MIUIHuanji
rm -rf $1/data-app/MIUINewHome
rm -rf $1/data-app/MIUINotes
rm -rf $1/data-app/MiuiScanner
rm -rf $1/data-app/MIUIVipAccount
rm -rf $1/data-app/MIUISoundRecorderTargetSdk30
rm -rf $1/data-app/MIUIVipAccount
rm -rf $1/data-app/MIUIVirtualSim
rm -rf $1/data-app/MIUIWeather
rm -rf $1/data-app/MIUIXiaoAiSpeechEngine
rm -rf $1/data-app/MIUIYoupin
rm -rf $1/data-app/SmartHome
rm -rf $1/data-app/ThirdAppAssistant
rm -rf $1/data-app/wps-lite
rm -rf $1/data-app/XMRemoteController

rm -rf $1/product/app/aiasst_service
rm -rf $1/product/app/talkback
