#!/bin/bash

# อัปเดตแพ็กเกจ
pkg update -y && pkg upgrade -y

# ติดตั้ง dependencies
pkg install -y git build-essential curl openssl-tool
pkg install -y clang make automake autoconf
pkg install -y binutils

# โคลน repo และเปลี่ยนไปยัง branch ARM
git clone https://github.com/NGSStudio/ccminer.git
cd ccminer || { echo "ไม่สามารถเข้าโฟลเดอร์ ccminer"; exit 1; }

# ให้สิทธิ์ไฟล์สคริปต์
chmod +x build.sh autogen.sh configure.sh

# รัน build
./build.sh

