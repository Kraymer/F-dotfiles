# Install nano syntax highlighting files
install_nanorc() {
    if [ ! -d "~/.nano" ]; then
        echo "Installing '~/.nano' ..."
        git clone https://github.com/scopatz/nanorc.git ~/.nano
    fi
}
install_nanorc
