#!/bin/bash
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0
cp manifest.xml .repo/local_manifests/manifest.xml
repo sync -j$(nproc --all)
source build/envsetup.sh
lunch lineage_gta7lite-userdebug
mka bacon
