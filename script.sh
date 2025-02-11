#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs

git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b yaap .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_lavender-ap4a-userdebug
m evolution
