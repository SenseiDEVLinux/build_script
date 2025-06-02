#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs

git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b evo-oss .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-eng
m evolution
