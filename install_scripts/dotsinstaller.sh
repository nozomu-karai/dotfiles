#!/usr/bin/env bash

set -ue

local current_dir
current_dir=$(dirname "${BASH_SOURCE[0]:-$0}")
source $current_dir/lib/utilfuncs.sh

source $current_dir/lib/dotsinstaller/link-to-homedir.sh

print_info "#####################################################"
print_info "$(basename "${BASH_SOURCE[0]:-$0}") link success!!!"
print_info "#####################################################"
print_info ""