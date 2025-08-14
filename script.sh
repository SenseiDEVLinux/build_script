#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

repo init -u https://github.com/SenseiDEVLinux/platform_manifest_aicp -b v15.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b aicp .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch aicp_garnet-bp1a-userdebug
mka bacon
