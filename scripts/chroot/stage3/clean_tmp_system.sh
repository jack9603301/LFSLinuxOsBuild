echo "Step 32: Clean and back up temporary systems(From Stage3 in chroot)"

rm -rfv /usr/share/{info,man,doc}/*
find /usr/{lib,libexec} -name \*.la -delete
rm -rfv /tools
