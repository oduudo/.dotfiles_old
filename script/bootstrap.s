#!/usr/bin/env bash
#
# Run all installers and symlink dotfiles

set -e

Echo "Bootstrapping"

Echo "Updating submodules"
git submodule init && git submodule update

script/platform.s
script/generic.s
script/symlinks.s
