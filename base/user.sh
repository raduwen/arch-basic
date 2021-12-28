#!/bin/bash

ohai "User"

echo root:root | chpasswd

pacman -S --noconfirm --needed sudo zsh

if ! grep raduwen /etc/group >/dev/null; then
  useradd -m -g users -G wheel -s /bin/zsh raduwen
  echo raduwen:raduwen | chpasswd
  echo "raduwen ALL=(ALL) ALL" >>/etc/sudoers
  touch /home/raduwen/.zshrc
fi
