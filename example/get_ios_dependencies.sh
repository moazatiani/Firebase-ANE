#!/bin/sh

rm -r ios_dependencies/device
rm -r ios_dependencies/simulator

wget https://github.com/tuarua/Swift-IOS-ANE/releases/download/2.4.0/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip

wget https://github.com/tuarua/Swift-IOS-ANE/releases/download/2.4.0/AIRSDK_additions.zip
unzip -u -o AIRSDK_additions.zip
rm AIRSDK_additions.zip

wget https://github.com/tuarua/FirebaseANE/releases/download/0.0.2/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip

wget -O ../native_extension/ane/FirebaseANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/FirebaseANE.ane?raw=true
wget -O ../native_extension/AnalyticsANE/ane/AnalyticsANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/AnalyticsANE.ane?raw=true
wget -O ../native_extension/AuthANE/ane/AuthANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/AuthANE.ane?raw=true
wget -O ../native_extension/DynamicLinksANE/ane/DynamicLinksANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/DynamicLinksANE.ane?raw=true
wget -O ../native_extension/FirestoreANE/ane/FirestoreANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/FirestoreANE.ane?raw=true
wget -O ../native_extension/MessagingANE/ane/MessagingANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/MessagingANE.ane?raw=true
wget -O ../native_extension/PerformanceANE/ane/PerformanceANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/PerformanceANE.ane?raw=true
wget -O ../native_extension/RemoteConfigANE/ane/RemoteConfigANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/RemoteConfigANE.ane?raw=true
wget -O ../native_extension/StorageANE/ane/StorageANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/StorageANE.ane?raw=true
wget -O ../native_extension/GoogleSignInANE/ane/GoogleSignInANE.ane https://github.com/tuarua/Firebase-ANE/releases/download/0.0.2/GoogleSignInANE.ane?raw=true
