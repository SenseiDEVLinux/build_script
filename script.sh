#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b pixel .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
riseup garnet userdebug
rise b
