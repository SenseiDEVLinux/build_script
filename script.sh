#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/VoltageOS/manifest.git -b 15-qpr2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b volt15 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh

git clone https://github.com/VoltageOS/vendor_voltage-priv_keys -b 15-qpr2 vendor/voltage-priv/keys
cd vendor/voltage-priv/keys
chmod +x keys.sh
./keys.sh
cd ../../../

lunch voltage_garnet-bp1a-userdebug
mka bacon
