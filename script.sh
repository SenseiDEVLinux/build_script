#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/SenseiDEVLinux/android1.git -b 15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b crdroid-15 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
