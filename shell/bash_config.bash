#!/bin/bash

# bash_config

#setopt NO_BG_NICE # don't nice background tasks
#setopt NO_HUP
#setopt NO_LIST_BEEP
#setopt LOCAL_OPTIONS # allow functions to have local options
#setopt LOCAL_TRAPS # allow functions to have local traps

#setopt PROMPT_SUBST
#setopt CORRECT
#setopt COMPLETE_IN_WORD
#setopt IGNORE_EOF

#setopt HIST_VERIFY
#setopt SHARE_HISTORY # share history between sessions ???
#setopt EXTENDED_HISTORY # add timestamps to history
#setopt APPEND_HISTORY # adds history
#setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
#setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
#setopt HIST_REDUCE_BLANKS

#Only "exit" or "logout" will log off the system.
#set -o ignoreeof

# Autocorrect typos in path names when using `cd`
#shopt -s cdspell

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
#shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob

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
#set -o emacs
##########

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
#setopt complete_aliases

########## History

#shopt -s histappend # Append to the Bash history file, rather than overwriting it


#export HISTCONTROL=ignoredups # Ignore duplicate commands in the history
#export HISTFILESIZE=10000 # Increase the maximum number of lines contained in the history file
#export HISTSIZE=10000 # Increase the maximum number of commands to remember

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
#export PROMPT_COMMAND="history -a; history -c; history -r"
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
##########

########## Manpages
#export MANPATH=/opt/local/share/man:$MANPATH

# Don't clear the screen after quitting a manual page
#export MANPAGER="less -X"
##########

#export ENV=$HOME/.bashrc




