#!/bin/bash

ohai "Host"

echo "rarch" >/etc/hostname

cat >/etc/hosts <<EOS
127.0.0.1 localhost
127.0.0.1 rarch
::1       localhost ip6-localhost ip6-loopback
ff02::1   ip6-allnodes
ff02::2   ip6-allrouters
EOS
