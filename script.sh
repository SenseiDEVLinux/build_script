#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/BlissRoms/stable_releases.git -b refs/tags/v18.5-stable-voyager --git-lfs
git clone https://github.com/SenseiDEVLinux/local_manifests --depth 1 -b bliss .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
blissify -g garnet
