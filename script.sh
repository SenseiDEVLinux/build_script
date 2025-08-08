#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

cd vendor/voltage-priv/keys

./keys.sh

repo init -u https://github.com/VoltageOS/manifest.git -b 15-qpr2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b volt15 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch voltage_garnet-bp1a-userdebug
mka bacon
