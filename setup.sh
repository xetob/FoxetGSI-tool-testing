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
install_with_fallback "backports.lzma"
install_with_fallback "PyCryptodome"
install_with_fallback "tqdm"
install_with_fallback "testresources"
install_with_fallback "protobuf==5.27.3"
install_with_fallback "six==1.16.0"
install_with_fallback "bsdiff4==1.1.5"
install_with_fallback "brotli==1.1.0"
install_with_fallback "zstandard==0.23.0"
