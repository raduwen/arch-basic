#!/bin/sh

ohai "Boot"

bootctl install
cat >/boot/loader/loader.conf <<EOS
default arch
timeout 3
editor no
EOS

if [ ! -f /boot/loader/entries/arch.conf ]; then
  echo "title Arch Linux" >/boot/loader/entries/arch.conf
  echo "linux /vmlinuz-linux" >>/boot/loader/entries/arch.conf
  echo "initrd /intel-ucode.img" >>/boot/loader/entries/arch.conf
  echo "initrd /initramfs-linux.img" >>/boot/loader/entries/arch.conf
  echo "options root=$(blkid -o export /dev/sda1 | grep ^UUID=)" rw >>/boot/loader/entries/arch.conf
fi
