#!/bin/bash
echo "=== Building Flutter Engine for Android ==="

# 빌드 준비
echo "Prepare arm64-v8a and armeabi-v7a..."
./flutter/tools/gn --android --android-cpu=arm64 --runtime-mode=release
./flutter/tools/gn --android --android-cpu=arm --runtime-mode=release

# arm64-v8a 빌드
echo "Building for arm64-v8a..."
ninja -C out/android_release_arm64

# armeabi-v7a 빌드
echo "Building for armeabi-v7a..."
ninja -C out/android_release_arm

echo "=== Build Complete ==="