#!/bin/bash


where() {
    find . -name "*${1}*"
}

# function to set terminal title  
function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

function precmd () {
  window_title="\033]0;$@\007"
  echo -ne "$window_title"
}

function preexec() {
  case $1 in
    *py*)                precmd "🐍 ${1}" ;;
    *gulp*)              precmd "🎨 ${1}" ;;
    *htop*)              precmd "🔋 ${1}" ;;
    *ssh* )              precmd "🛰 ${1}" ;;
    *release* )          precmd "🚀 ${1}" ;;
    *micro*|*nano* )     precmd "📝 ${1}" ;;
    *rsync*|*cp*|*scp*   precmd "💾 ${1}" ;;
  esac
}
