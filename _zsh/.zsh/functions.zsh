## TODO
#load_file_local(){
#}

#load_file_local ${BASH_SOURCE:-$0}

# Reset prompt every minute to update hour
TMOUT=60
TRAPALRM() {
    if [ "$WIDGET" != "complete-word" ]; then
        zle reset-prompt
    fi
}
