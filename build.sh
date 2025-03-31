sudo apt install musl-tools -y
git clone --depth=1 https://git.suckless.org/sbase/
cp config.mk  sbase/
cd sbase
make dist
make DESTDIR="$PWD/pkg" install
tar -czvf sbase-static.tar.gz -C "$PWD/pkg" .

# make all install uninstall dist sbase-box-install sbase-box-uninstall clean
# links to /lib/x86_64-linux-gnu/libc.so if build from debian

