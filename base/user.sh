#!/bin/bash

ohai "User"

echo root:root | chpasswd

pacman -S --noconfirm --needed sudo zsh

if ! grep raduwen /etc/group >/dev/null; then
  useradd -m raduwen
  echo raduwen:raduwen | chpasswd
  echo "raduwen ALL=(ALL) ALL" >>/etc/sudoers
  chsh -s /bin/zsh raduwen
fi
