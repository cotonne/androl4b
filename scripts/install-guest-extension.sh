#!/bin/bash

apt-get install build-essential linux-headers-`uname -r` dkms

# Mount the disk image
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf isomount $VBOX_ISO
