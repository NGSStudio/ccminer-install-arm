pkg update -y && pkg upgrade -y
pkg install git build-essential curl openssl-tool -y
pkg install clang make automake autoconf -y
pkg install binutils -y

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh autogen.sh configure.sh
./build.sh
