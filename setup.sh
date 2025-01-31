#!/bin/bash
# Debian-based

       sudo apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3-pip python-is-python3 brotli liblz4-tool gawk aria2 default-jre -y
    pip install --upgrade pip > /dev/null 2>&1 
    pip install --upgrade pip --break-system-packages > /dev/null 2>&1
    pip install backports.lzma pycrypto --break-system-packages
    pip install tqdm --break-system-packages
    pip install protobuf==5.27.3 six==1.16.0 bsdiff4==1.1.5 brotli==1.1.0 zstandard==0.23.0 --break-system-packages
