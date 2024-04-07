#!/usr/bin/env bash

echo "Step 3: Copy all required files"

mkdir -v $LFS/sources
cp -ravf $REPO_PATH/sources/lfs/* $LFS/sources

echo "Step 3-Output: Print all files in the sources directory"

ls -l -a -h $LFS/sources/
