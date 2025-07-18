#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b a16 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp2a-userdebug
mka bacon
