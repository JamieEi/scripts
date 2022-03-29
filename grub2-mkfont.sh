#!/usr/bin/env bash

set -e

SRC_NAME=DejaVuSansMono
SRC_PATH=/usr/share/fonts/dejavu-sans-mono-fonts/$SRC_NAME.ttf
SIZE=32
DEST_PATH=/boot/grub2/fonts/$SRC_NAME$SIZE.pf2

sudo grub2-mkfont -o $DEST_PATH -s $SIZE $SRC_PATH
echo "GRUB_FONT=$DEST_PATH" | sudo tee -a /etc/default/grub

echo Be sure to set GRUB_TERMINAL_OUTPUT="gfxterm"...
sudo vim /etc/default/grub

