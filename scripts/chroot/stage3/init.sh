#!/usr/bin/env bash

set -e
set -o verbose

touch /var/log/{btmp,lastlog,faillog,wtmp}
chgrp -v utmp /var/log/lastlog
chmod -v 664  /var/log/lastlog
chmod -v 600  /var/log/btmp

. /scripts/chroot/stage3/build_gettext.sh || exit 1
. /scripts/chroot/stage3/build_bison.sh || exit 1
. /scripts/chroot/stage3/build_perl.sh || exit 1
. /scripts/chroot/stage3/build_python.sh || exit 1
. /scripts/chroot/stage3/build_texinfo.sh || exit 1
. /scripts/chroot/stage3/build_util_linux.sh || exit 1
. /scripts/chroot/stage3/clean_tmp_system.sh || exit 1
. /scripts/chroot/stage3/build_man_pages.sh || exit 1
. /scripts/chroot/stage3/build_iana_etc.sh || exit 1
. /scripts/chroot/stage3/build_glibc.sh || exit 1
. /scripts/chroot/stage3/build_zlib.sh || exit 1
. /scripts/chroot/stage3/build_bzip2.sh || exit 1
. /scripts/chroot/stage3/build_xz.sh || exit 1
. /scripts/chroot/stage3/build_zstd.sh || exit 1
. /scripts/chroot/stage3/build_file.sh || exit 1
. /scripts/chroot/stage3/build_readline.sh || exit 1
. /scripts/chroot/stage3/build_m4.sh || exit 1
. /scripts/chroot/stage3/build_bc.sh || exit 1
. /scripts/chroot/stage3/build_flex.sh || exit 1
. /scripts/chroot/stage3/build_tcl.sh || exit 1
. /scripts/chroot/stage3/build_expect.sh || exit 1
. /scripts/chroot/stage3/build_dejagnu.sh || exit 1
. /scripts/chroot/stage3/build_pkgconf.sh || exit 1
. /scripts/chroot/stage3/build_binutils.sh || exit 1
. /scripts/chroot/stage3/build_gmp.sh || exit 1
. /scripts/chroot/stage3/build_mpfr.sh || exit 1
. /scripts/chroot/stage3/build_mpc.sh || exit 1
. /scripts/chroot/stage3/build_attr.sh || exit 1
. /scripts/chroot/stage3/build_acl.sh || exit 1
. /scripts/chroot/stage3/build_libcap.sh || exit 1
. /scripts/chroot/stage3/build_libxcrypt.sh || exit 1
. /scripts/chroot/stage3/build_shadow.sh || exit 1
. /scripts/chroot/stage3/build_gcc.sh || exit 1
