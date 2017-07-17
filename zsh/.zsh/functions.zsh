# Reset prompt every minute to update hour
TRAPALRM() {  # don't clear completion items on reset prompt
    if [ "$WIDGET" != "complete-word" ]; then
        zle reset-prompt
    fi
}


dirwatch() {
    inotifywait -m $1 -e create -e move -e delete |
        while read thepath action file; do
            echo "$action $file"
        done
}

where() {
    find . -name \*$1\*
}

ssh() {
	/usr/bin/ssh -t "$@" tmux new-session -A -s fabrice-session
}

psql_history() {
    psql -U postgres -c "SELECT (pg_stat_file('base/'||oid ||'/PG_VERSION')).modification, datname FROM pg_database;"
}
