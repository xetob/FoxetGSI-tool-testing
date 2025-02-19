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
sudo apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3-pip python-is-python3 brotli liblz4-tool gawk aria2 default-jre erofs-utils -y

# Install Python packages
install_with_fallback "backports.lzma bsdiff4 zstandard protobuf pycryptodome"
