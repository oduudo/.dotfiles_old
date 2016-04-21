#!/bin/bash

# bash_config



#Only "exit" or "logout" will log off the system.
set -o ignoreeof

shopt -s cdspell # Autocorrect typos in path names when using `cd`
shopt -s checkwinsize # Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s nocaseglob # Case-insensitive globbing (used in pathname expansion)
shopt -s dotglob
#shopt -s globstar # the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories.

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi



########## Text editing/viewing.
#
#export LANG=de_DE.utf-8
#de_DE.utf-8
#export CLICOLOR=1 #Colorizes output of ls and others.
#export EDITOR=vi
#export EDITOR=vim
#export VISUAL=$EDITOR
#export PAGER=less
#export LESS='-r-i-P%f (%i/%m) Line %lt/%L' #Better prompt, case-insensitive search by default.

#Command line editing options.
set -o emacs
##########

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

########## History

shopt -s histappend # Append to the Bash history file, rather than overwriting it

export HISTCONTROL=ignoreboth # Ignore duplicate commands or starting space in the history
export HISTFILESIZE=1000 # Increase the maximum number of lines contained in the history file
export HISTSIZE=1000 # Increase the maximum number of commands to remember

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
export PROMPT_COMMAND="history -a; history -c; history -r"
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
##########

########## Manpages
#export MANPATH=/opt/local/share/man:$MANPATH

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"
##########

#export ENV=$HOME/.bashrc




