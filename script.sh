#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/GenesisOS/manifest.git -b verve-qpr2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b genesis .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
breakfast garnet
mka genesis
