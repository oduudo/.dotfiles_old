#!/bin/bash

# bash_config

#Only "exit" or "logout" will log off the system.
set -o ignoreeof

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

########## Text editing/viewing.
#
#export LANG=de_DE.utf-8
#de_DE.utf-8
export CLICOLOR=1 #Colorizes output of ls and others.
#export EDITOR=vi
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less
export LESS='-r-i-P%f (%i/%m) Line %lt/%L' #Better prompt, case-insensitive search by default.

#Command line editing options.
set -o emacs
##########

########## History
# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Increase the maximum number of lines contained in the history file
export HISTFILESIZE=10000
# Increase the maximum number of commands to remember
export HISTSIZE=10000

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

export ENV=$HOME/.bashrc




