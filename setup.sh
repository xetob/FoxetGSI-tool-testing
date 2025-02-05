#!/bin/bash

sudo apt update
sudo apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3-pip python-is-python3 brotli liblz4-tool gawk aria2 default-jre erofs-utils -y

pip install backports.lzma PyCryptodome tqdm testresources protobuf==5.27.3 six==1.16.0 bsdiff4==1.1.5 brotli==1.1.0 zstandard==0.23.0 --break-system-packages
if [ $? -ne 0 ]; then
pip install backports.lzma PyCryptodome tqdm testresources protobuf==5.27.3 six==1.16.0 bsdiff4==1.1.5 brotli==1.1.0 zstandard==0.23.0
