#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs

git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b Evo14 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_lavender-user
m evolution
