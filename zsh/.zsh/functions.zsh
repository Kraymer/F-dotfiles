where() {
    find . -name "*${1}*"
}


psql_history() {
    psql -U postgres -c "SELECT (pg_stat_file('base/'||oid ||'/PG_VERSION')).modification, datname FROM pg_database;"
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
  window_title="\033]0;${PWD##*/} $@\007"
  echo -ne "$window_title"
}

function preexec() {
   precmd "🐍" ${1}
}
