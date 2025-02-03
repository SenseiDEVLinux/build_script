#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/

# Remove device tree
rm -rf device/xiaomi/lavender
rm -rf vendor/xiaomi/lavender
rm -rf kernel/xiaomi/lavender
rm -rf hardware/xiaomi

# Remove hals tree
rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/media
rm -rf hardware/qcom-caf/msm8998/display

# Initialize ROM manifest
repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs

# Sync the repo with force to ensure a clean sync
/opt/crave/resync.sh

# Cloning Device Tree
	git clone --depth 1 https://github.com/SenseiDEVLinux/device_xiaomi_lavender_14 device/xiaomi/lavender
	
# Cloning Vendor Tree
	git clone --depth 1 https://github.com/SenseiDEVLinux/vendor_xiaomi_lavender_14 vendor/xiaomi/lavender
	
# Cloning Kernel Tree
	git clone --depth 1 https://github.com/SenseiDEVLinux/kernel_xiaomi_lavender_419 kernel/xiaomi/lavender
	
# Cloning Hardware Audio Tree
	git clone --depth 1 https://github.com/Lavender-LineageOS/hardware_qcom-caf_sdm660_audio hardware/qcom-caf/msm8998/audio
	
# Cloning Hardware Media Tree
	git clone --depth 1 https://github.com/Lavender-LineageOS/hardware_qcom-caf_sdm660_media hardware/qcom-caf/msm8998/media
	
# Cloning Hardware Display Tree
	git clone --depth 1 https://github.com/Lavender-LineageOS/hardware_qcom-caf_sdm660_display hardware/qcom-caf/msm8998/display
	
# Cloning Hardware Xiaomi Tree
	git clone --depth 1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
	
# Cloning Dolby Atmos
	git clone --depth 1 https://github.com/userariii/vendor_motorola-dolby vendor/motorola-dolby
	
# Set up th build environment
. build/envsetup.sh

# Choose the target device
lunch lineage_lavender-user 

# Build the ROM (use mka bacon for a full build)
m evolution
