#!/bin/bash

# my own
alias x="exit"

alias cls='clear'

alias reinst!='cd ~/.dotfiles && . ~/.dotfiles/script/bootstrap.s'
alias reload!='. ~/.bashrc'
alias count='wc -l'
alias tft='curl "http://itsthisforthat.com/api.php?text"'

alias shout="tr '[[:lower:]]' '[[:upper:]]'"

# ryanb
# cd
alias ..='cd ..'
alias ...="cd ../.."
alias ~="cd ~"
alias -- -="cd -"
alias ..dot='cd ~/.dotfiles'

# ls
# ref: http://ss64.com/osx/ls.html
alias l="ls -oG"		# Long form no user group, color
alias ll="ls -l"		# Long
alias la="ls -AGFoh"	# List all, color, mark file types, long form no user group, file size
alias lr="ls -RA"		# List recursive incl. .files
alias ls="ls -F"		# List mit Typisierung am Ende

# find
#alias find_source='find . -type f -not -path "*/target/*" -not -path "*/.svn/*" -not -path "*/.git/*" -not -name ".DS_Store" -not -iname "*.jar" -not -iname "*.gif" -not -iname "*.jpg" -not -iname "*.png"'

# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'

# rails
alias b="bundle"
alias be='bundle exec'
alias bi='bundle install --quiet'
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias rake='ruby -S rake'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'
alias specs="rspec --format=documentation"

# commands starting with % for pasting from web
#alias %=' '

# necolas
# Allow aliases to be with sudo
alias sudo="sudo "

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"

