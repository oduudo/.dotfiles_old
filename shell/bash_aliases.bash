#!/bin/bash

# bash_aliases

# my own
alias x="exit"

alias cls='clear'

alias lastfm='shell-fm'
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

# ls
# ref: http://ss64.com/osx/ls.html
#alias ls="ls -F"		# List mit Typisierung am Ende
alias l="ls -oG"		# Long form no user group, color
#alias l='ls -la'
#alias l="ls -lAh"		# Long, incl .files, unit suffix
alias ll="ls -l"		# Long
#alias la='ls -A'		# Incl .files
alias la="ls -AGFoh"	# List all except . and ..., color, mark file types, long form no user group, file size
alias lr="ls -RA"		# List recursive incl. .files
#alias lt="ls -toG"		# Order by last modified, long form no user group, color
#alias lat="ls -AGFoth"	# List all except . and ..., color, mark file types, long form no user group, order by last modified, file size

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

# Open file in existing MacVim window
alias gvim="open -a MacVim"
alias mvim="open -a MacVim"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

