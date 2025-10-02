echo "Step 103: Compile MarkupSafe 3.0.2(From Stage3 in chroot)"

cd /sources
tar xvf "./markupsafe-3.0.2.tar.gz"
cd markupsafe-3.0.2
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist Markupsafe
cd ../
rm -rfv markupsafe-3.0.2
cd /
