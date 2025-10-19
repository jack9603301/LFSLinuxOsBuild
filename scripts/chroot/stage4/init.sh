#!/usr/bin/env bash

set -e
set -o verbose

. /scripts/chroot/stage4/build_libtasn1.sh || exit 1
. /scripts/chroot/stage4/build_p11-kit.sh || exit 1
. /scripts/chroot/stage4/build_nspr.sh || exit 1
. /scripts/chroot/stage4/build_nss.sh || exit 1
. /scripts/chroot/stage4/build_make-ca.sh || exit 1
