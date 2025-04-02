#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b crdroid-15 .repo/local_manifests

/opt/crave/resync.sh

# Some Gapps flags 
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MATLOG := true

. build/envsetup.sh
lunch lineage_garnet-ap4a-userdebug
mka bacon
