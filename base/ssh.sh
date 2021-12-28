#!/bin/bash

ohai "SSH"

pacman -S --noconfirm --needed openssh
systemctl enable sshd
