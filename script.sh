#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs

git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b 77 .repo/local_manifests

/opt/crave/resync.sh

rm -rf hardware

rm -rf device/qcom/sepolicy_vndr

git clone https://github.com/LineageOS/android_device_qcom_sepolicy_vndr device/qcom/sepolicy_vndr/sm8450

. build/envsetup.sh
lunch lineage_garnet-ap4a-user
mka bacon
