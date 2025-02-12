#!/bin/bash

install_with_fallback() {
    package_name=$1
    pip3 install $package_name
    if [ $? -ne 0 ]; then
        echo "Error installing $package_name without --break-system-packages. Attempting to install with the flag."
        pip3 install $package_name --break-system-packages
    fi
}

sudo apt update
sudo apt install openjdk-8-jdk nace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract rename liblzma-dev python3-pip brotli lz4 protobuf-compiler git gawk erofs-utils -y

# Install Python packages
install_with_fallback "backports.lzma protobuf twrpdtgen extract-dtb pycryptodome"
