#!/usr/bin/env bash

set -ue

function main() {
    local current_dir
    current_dir=$(dirname "${BASH_SOURCE[0]:-$0}")
    source $current_dir/lib/utilfuncs.sh

    source $current_dir/lib/link-to-homedir.sh

    print_info "#####################################################"
    print_info "$(basename "${BASH_SOURCE[0]:-$0}") link success!!!"
    print_info "#####################################################"
    print_info ""

	source $current_dir/lib/dotsinstaller/install-neovim.sh

	print_info ""
	print_info "#####################################################"
	print_info "$(basename "${BASH_SOURCE[0]:-$0}") update finish!!!"
	print_info "#####################################################"
	print_info ""
}

main "$@"
