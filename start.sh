#!/bin/bash

SCRIPT_DIR="$(
  cd "$(dirname "$0")"
  pwd
)"

source "$SCRIPT_DIR/func/print.sh"

source "$SCRIPT_DIR/base/swap.sh"
source "$SCRIPT_DIR/base/timezone.sh"
source "$SCRIPT_DIR/base/locale.sh"
source "$SCRIPT_DIR/base/host.sh"
source "$SCRIPT_DIR/base/dhcp.sh"
source "$SCRIPT_DIR/base/user.sh"
source "$SCRIPT_DIR/base/ssh.sh"
source "$SCRIPT_DIR/base/boot.sh"
