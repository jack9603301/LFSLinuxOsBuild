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
