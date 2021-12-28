#!/bin/bash

ohai "Swapfile"

if [ ! -f /swapfile ]; then
  echo "Creating 4G /swapfile ..."
  dd if=dev/zero of=/swapfile bs=1M count=4096 status=progress
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
fi

if ! grep swapfile /etc/fstab; then
  echo "/swapfile none swap defaults 0 0" >>/etc/fstab
fi
