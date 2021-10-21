#!/bin/bash

# Search which filenames contain given string in local dir subtree 
where() {
    find . -name "*${1}*"
}

# Set terminal title  
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

# Set window title
function set-win-title () {
  window_title="\033]0;$@\007"
  echo -ne "$window_title"
}

# Prepend emoji on window title based on running command
function preexec() {
  case $1 in
    *py*)                 set-win-title "🐍 ${1}" ;;
    *gulp*)               set-win-title "🎨 ${1}" ;;
    *htop*)               set-win-title "🔋 ${1}" ;;
    *ssh* )               set-win-title "🛰 ${1}" ;;
    *release* )           set-win-title "🚀 ${1}" ;;
    *micro*|*nano* )      set-win-title "📝 ${1}" ;;
    *rsync*|*cp*|*scp*)   set-win-title "💾 ${1}" ;;
  esac
}
