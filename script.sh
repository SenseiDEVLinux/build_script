#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b los21 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_lavender-ap2a-userdebug
mka bacon
