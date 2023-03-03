#!/usr/bin/env bash

set -ue

function main() {
    local current_dir
    current_dir=$(dirname "${BASH_SOURCE[0]:-$0}")
    source $current_dir/install_scripts/lib/utilfuncs.sh

    "${current_dir}"/install_scripts/dotsinstaller.sh install

    print_info ""
    print_info "#####################################################"
    print_info "$(basename "${BASH_SOURCE[0]:-$0}") install finish!!!"
    print_info "#####################################################"
    print_info ""
    
}

main "$@"