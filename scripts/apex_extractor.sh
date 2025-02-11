#!/bin/bash

install_with_fallback() {
    package_name=$1
    pip3 install $package_name
    if [ $? -ne 0 ]; then
        echo "Error installing $package_name without --break-system-packages. Attempting to install with the flag."
        pip3 install $package_name --break-system-packages
    fi
}

install_with_fallback "protobuf==3.19.0"

LOCALDIR=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`
APEXEXTRACT=$LOCALDIR/../tools/apex_tools/deapexer.py

TMPDIR=$LOCALDIR/../tmp/apex_ext
mkdir -p "$TMPDIR"

APEXDIR="$1"
APEXES=$(ls "$APEXDIR" | grep ".*apex")
for APEX in $APEXES; do
    APEXNAME=$(echo "$APEX" | sed 's/\.[^.]*$//')
    if [[ -d "$APEXDIR/$APEXNAME" ]]; then
        continue
    fi
    if [[ $APEX == *".capex" ]]; then
        7z e -y "$APEXDIR/$APEX" original_apex -o"$APEXDIR" 2>/dev/null >> "$TMPDIR"/zip.log
        mv -f "$APEXDIR/original_apex" "$APEXDIR/$APEXNAME.apex"
        rm -rf "$APEXDIR/$APEX"
    fi
    mkdir -p "$APEXDIR/$APEXNAME"
    7z e -y "$APEXDIR/$APEX" apex_pubkey -o"$APEXDIR/$APEXNAME" 2>/dev/null >> "$TMPDIR"/zip.log
    python3 $APEXEXTRACT --debugfs_path "$(which debugfs)" --fsckerofs_path "$(which fsck.erofs)" extract "$APEXDIR/$APEXNAME.apex" "$APEXDIR/$APEXNAME"
    rm "$APEXDIR/$APEXNAME.apex"
done

install_with_fallback "protobuf==5.27.3"

rm -rf "$TMPDIR"
