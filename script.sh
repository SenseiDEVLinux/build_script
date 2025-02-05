#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b los21 .repo/local_manifests

/opt/crave/resync.sh

echo -e "\e[33m \033[1m LET'S GO \e[0m \033[0m"

. build/envsetup.sh
lunch lineage_lavender-userdebug
mka bacon
