#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b sacura .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-ap4a-userdebug
mka bacon
