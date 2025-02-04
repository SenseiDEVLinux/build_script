#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs

git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b Evo14 .repo/local_manifests

/opt/crave/resync.sh

echo -e "\e[33m \033[1m LET'S GO \e[0m \033[0m"

. build/envsetup.sh
lunch lineage_lavender-user
m evolution

curl bashupload.com -T out/target/product/lavender/Evolution*.zi
