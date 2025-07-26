#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

repo init -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b crdroid-15 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
