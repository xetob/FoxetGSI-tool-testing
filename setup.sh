#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release)
    id_like=$(awk -F= '$1 == "ID_LIKE" {print $2}' /etc/os-release)
    if [[ "$distro" == "arch" || "$id_like" == "arch" ]]; then
       echo "Arch Linux Detected"
       sudo pacman -S unace unrar zip unzip p7zip sharutils uudeview arj cabextract file-roller dtc python3 python-pip brotli lz4 gawk aria2 jre-openjdk -y
       #aur=rar
    else
       sudo apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3-pip python-is-python3 brotli liblz4-tool gawk aria2 default-jre -y
    fi
    pip install --upgrade pip > /dev/null 2>&1 
    pip install --upgrade pip --break-system-packages > /dev/null 2>&1
    pip install backports.lzma pycrypto --break-system-packages
    pip install tqdm --break-system-packages
    pip install protobuf==5.27.3 six==1.16.0 bsdiff4==1.1.5 brotli==1.1.0 zstandard==0.23.0 --break-system-packages
fi
