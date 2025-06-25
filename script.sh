#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Los-Ext/manifest.git -b 15.2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b los22-ext .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
