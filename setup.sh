#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release)
    id_like=$(awk -F= '$1 == "ID_LIKE" {print $2}' /etc/os-release)
    if [[ "$distro" == "arch" || "$id_like" == "arch" ]]; then
       echo "Arch Linux Detected"
       sudo pacman -S --needed unace unrar zip unzip p7zip default-jre sharutils uudeview arj cabextract file-roller dtc xz python3-pip python-is-python3 brotli lz4 gawk libmpack aria2
       #aur=rar
    else
       sudo apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3-pip python-is-python3 brotli liblz4-tool gawk aria2 default-jre
    fi
    pip install backports.lzma
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install protobuf xz brotli lz4 aria2
    pip install backports.lzma pycrypto
    pip install tqdm 
    pip install -r requirements.txt
fi
