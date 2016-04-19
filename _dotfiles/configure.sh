#!/bin/bash

OS=`uname -s | tr "[:upper:]" "[:lower:]"`
DOTFILES_STOW="../.stow-local-ignore"

copyline() {
    echo $1 >> $2
    echo "Copy $1 to $2"
}

copyfile() {
    while IFS='' read -r line || [[ -n "$line" ]]; do
        PACKAGE=`echo ${line} | cut -d "/" -f1`
        line=${line#$package}
        PACKAGE_STOW="../${PACKAGE}/.stow-local-ignore"
        echo $PACKAGE_STOW
        grep -q -F ${line} $PACKAGE_STOW 2>> /dev/null || copyline "$line" "$PACKAGE_STOW"
        # grep -q -F ${line} ${DOTFILES_STOW} 2>> /dev/null || copyline $line
    done < $1
}

#copyfile "stow-local-ignore"
copyfile ".stow-local-ignore.${OS}"
echo 'Done!'
