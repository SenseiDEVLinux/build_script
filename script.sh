repo init -u https://github.com/LineageOS/android.git -b lineage-22.1 --git-lfs
curl -s $SSH | bash > /dev/null 2>&1; sudo apt update && sudo apt install ccache -y # > /dev/null 2>&1
rm -rf .repo/local_manifests; git clone https://github.com/SenseiDEVLinux/LocalManifest --depth 1 -b 77 .repo/local_manifests
/opt/crave/resync.sh # repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
export TZ=Asia/Dhaka
lunch lineage_garnet-ap4a-userdebug
mka bacon
