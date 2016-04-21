# Reset prompt every minute to update hour
TMOUT=60
TRAPALRM() {
    if [ "$WIDGET" != "complete-word" ]; then
        zle reset-prompt
    fi
}

# Install nano syntax highlighting files
install_nanorc() {
    if [ ! -d "~/.nano" ]; then
        echo "Installing '~/.nano' ..."
        git clone git@github.com:scopatz/nanorc.git ~/.nano
    fi
}
