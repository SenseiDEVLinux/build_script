#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b los22 .repo/local_manifests

/opt/crave/resync.sh

make installclean

. build/envsetup.sh
lunch lineage_garnet-ap4a-user
mka bacon
