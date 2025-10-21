#!/sbin/bash

set -e
set -o verbose

. /scripts/chroot/init_full_layouts.sh || exit 1
. /scripts/chroot/init_base_file_and_links.sh || exit 1
exec /usr/bin/bash --login /scripts/chroot/init.sh
