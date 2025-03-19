#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/yaap/manifest.git -b fifteen --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b yaap .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch yaap_garnet-ap4a-user
m yaap
