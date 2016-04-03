#!/usr/bin/env bash
set -e

cd "${0%/*}"
echo cd "${0%/*}"

for file in "$PWD"/*; do
  name="$(basename "$file" .md)"
  [[ $name = bin ]] && dotname="$name" || dotname=".${name}"

  [[ "install readme" =~ $name ]] && continue
  [ -e "${HOME}/${dotname}" ] && continue
  git --git-dir "${file}/.git" rev-parse --git-dir &>/dev/null && continue

  echo ln -sfnv ${file#$HOME/} "${HOME}/${dotname}"
done

