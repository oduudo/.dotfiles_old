#!/bin/bash

# bash_config

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Increase the maximum number of lines contained in the history file
# (default is 500)
export HISTFILESIZE=10000

# Increase the maximum number of commands to remember
# (default is 500)
export HISTSIZE=10000

#export MANPATH=/opt/local/share/man:$MANPATH

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# Export PhantomJS bin location (be explicit in case Homebrew is not installed
# in the default location)
#export PHANTOMJS_BIN="$(brew --prefix)/bin/phantomjs"

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
