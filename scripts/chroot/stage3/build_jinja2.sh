echo "Step 104: Compile Jinja2 3.1.6(From Stage3 in chroot)"

cd /sources
tar xvf "./jinja2-3.1.6.tar.gz"
cd jinja2-3.1.6
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist Jinja2
cd ../
rm -rfv jinja2-3.1.6
cd /
