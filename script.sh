#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b cr15-saphire .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_saphhire-bp1a-userdebug
mka bacon
