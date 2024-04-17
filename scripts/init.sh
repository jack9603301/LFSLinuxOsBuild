#!/usr/bin/env bash
set -e
. $REPO_PATH/scripts/init_base_layouts.sh || exit 1
. $REPO_PATH/scripts/init_sources_tar.sh || exit 1
. $REPO_PATH/scripts/stage1/build_binutils.sh || exit 1
. $REPO_PATH/scripts/stage1/build_gcc.sh || exit 1
. $REPO_PATH/scripts/stage1/build_linux_headers.sh || exit 1
. $REPO_PATH/scripts/stage1/build_glibc.sh || exit 1
. $REPO_PATH/scripts/stage1/build_libstdc++.sh || exit 1
. $REPO_PATH/scripts/stage2/build_m4.sh || exit 1
. $REPO_PATH/scripts/stage2/build_ncurses.sh || exit 1
. $REPO_PATH/scripts/stage2/build_bash.sh || exit 1
. $REPO_PATH/scripts/stage2/build_coreutils.sh || exit 1
. $REPO_PATH/scripts/stage2/build_diffutils.sh || exit 1
. $REPO_PATH/scripts/stage2/build_file.sh || exit 1
. $REPO_PATH/scripts/stage2/build_findutils.sh || exit 1
. $REPO_PATH/scripts/stage2/build_gawk.sh || exit 1
. $REPO_PATH/scripts/stage2/build_grep.sh || exit 1
. $REPO_PATH/scripts/stage2/build_gzip.sh || exit 1
. $REPO_PATH/scripts/stage2/build_make.sh || exit 1
. $REPO_PATH/scripts/stage2/build_patch.sh || exit 1
. $REPO_PATH/scripts/stage2/build_sed.sh || exit 1
. $REPO_PATH/scripts/stage2/build_tar.sh || exit 1
. $REPO_PATH/scripts/stage2/build_xz.sh || exit 1
. $REPO_PATH/scripts/stage2/build_binutils.sh || exit 1
. $REPO_PATH/scripts/stage2/build_gcc.sh || exit 1
. $REPO_PATH/scripts/chroot/mount_virtfs.sh || exit 1
