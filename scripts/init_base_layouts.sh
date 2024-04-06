#!/usr/bin/env bash

echo "Step 2: Initialize the basic environment layout"

mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

echo "Step 2 - Output: Print base directory layout information"

tree --dirsfirst
