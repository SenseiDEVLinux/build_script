#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b new-tress .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
