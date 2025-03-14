#!/bin/bash
echo "=== Building Flutter Engine for Android ==="

# 빌드 준비
./flutter/tools/gn --android --runtime-mode=release
ninja -C out/android_release

echo "=== Build Complete ==="