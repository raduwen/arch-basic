#!/bin/bash

SCRIPT_DIR="$(
  cd "$(dirname "$0")"
  pwd
)"

source "$SCRIPT_DIR/func/print.sh"

source "$SCRIPT_DIR/base/swap.sh"
source "$SCRIPT_DIR/base/timezone.sh"
