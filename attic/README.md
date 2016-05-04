## [Attic](https://attic-backup.org/)

This stow package helps you streamline your backup strategy.

Backup [preconfigured locations](https://github.com/Kraymer/F-dotfiles/blob/master/%40mac/%40macbook/.zsh/local/macbook-vars.zsh.example)
by executing `attic-backup.sh`, old archives are automatically pruned in case
of successfull backup.

zsh echoes date of last successfull backup at startup, so you get alerted if
 something went haywire in your backup strategy.

![attic last backup terminal info](https://dl.dropboxusercontent.com/u/1026715/github/F-dotfiles/attic_prompt.png)

For osx users, delegate the chore to perform backups to a `launchd` service by
installing the [`@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/tree/master/attic/%40Daemon-osx) subpackage.

### Install notes
    
    cd ~/F-dotfiles; stow stow  # install stow ignore file
    cd @mac; stow @macbook      # install files in .zsh/local/ that export $ATTIC* vars 
    cd ..; stow attic
    cd attic; stow @Daemon-osx
