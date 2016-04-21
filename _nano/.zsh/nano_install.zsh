# Install nano syntax highlighting files
install_nanorc() {
    if [ ! -d "~/.nano" ]; then
        echo "Installing '~/.nano' ..."
        git clone git@github.com:scopatz/nanorc.git ~/.nano
    fi
}
