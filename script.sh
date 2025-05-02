#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/ProjectMatrixx/android.git -b 15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b evo .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
