#!/bin/bash

ohai "DHCP"

pacman -S --noconfirm --needed dhcpcd
systemctl enable dhcpcd
