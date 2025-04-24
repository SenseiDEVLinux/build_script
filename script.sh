#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/The-Pixel-Project/manifest -b 15 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b pixel .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch aosp_garnet-bp1a-userdebug
make bacon
