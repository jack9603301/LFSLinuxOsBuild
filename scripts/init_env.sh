#!/usr/bin/env bash

echo "Step 1: Prepare all required environment variables and base directories for the build"

export REPO_PATH=$PWD
mkdir /mnt/lfs
cd /mnt/lfs
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:/usr/sbin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE

echo "Step 1 - Output: Print environment variable information"

export
