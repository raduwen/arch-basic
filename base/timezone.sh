#!/bin/bash

ohai "TimeZone"

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc
