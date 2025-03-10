#!/bin/bash

rm -rf .repo/local_manifests

repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 15 --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b sacura .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-ap4a-userdebug
make bacon
