#!/bin/bash

ohai "Localize"

cat >/etc/locale.gen <<EOS
en_US.UTF-8 UTF-8
ja_JP.UTF-8 UTF-8
EOS

locale-gen
echo "LANG=en_US.UTF-8" >/etc/locale.conf
