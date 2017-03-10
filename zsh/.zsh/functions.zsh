# Reset prompt every minute to update hour
TMOUT=60
TRAPALRM() {
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
