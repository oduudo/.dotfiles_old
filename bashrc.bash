#!/bin/bash

# bashrc by oduudo

# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

# Up-front dotfiles configuration
# Not part of `load_dotfiles` because it must be sourced before anything else
# to be sure that commands like `brew` (when installed in a custom location)
# are already added to the PATH.
[ -r $HOME/.dotfilesrc ] && source $HOME/.dotfilesrc;

load_dotfiles() {

    declare -a files=(
        $HOME/.rvm/scripts/rvm # Load RVM into a shell session *as a function*
        $HOME/.dotfiles/bash_config.bash # Options and Exports
        $HOME/.dotfiles/bash_aliases.bash # Aliases
#        $HOME/.dotfiles/functions/* # Functions
        $HOME/.dotfiles/bash_prompt.bash # Custom bash prompt
        $HOME/.dotfiles/bash_paths.bash # Path modifications
#        $(brew --prefix)/etc/bash_completion # Bash completion (installed via Homebrew)
        $HOME/.bash_profile.local # Local and private settings not under version control (e.g. git credentials)
    )

    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
#			echo ${files[$index]}
        fi
    done
}

load_dotfiles
unset load_dotfiles