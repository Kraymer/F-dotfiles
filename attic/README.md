**This package helps you streamline your [`Attic`](https://attic-backup.org/) <<https://attic-backup.org/>>  backup strategy.**

    ├── .zsh
    │   └── functions_attic.zsh    Display last backup date in your terminal
    └── bin
        └── attic-backup.sh        Create new attic archive and prune existing ones

## Instructions

Rock solid backup process in 3 steps :

1. Specify your `ATTIC_*` environment variables in your machine package (see [example](https://raw.githubusercontent.com/Kraymer/F-dotfiles/master/%40mac/%40macbook/.zsh/macbook-vars.sec.zsh.example))

1. Run backup using `attic-backup.sh`, old archives are automatically pruned in case of successful backup.
I recommend to use cron to plan the `attic-backup.sh` executions. For macOS users, a `launchd` service is provided by 
the [`@Daemon-macos`](@Daemon-macos) subpackage.

1. zsh echoes date of last successfull backup at terminal startup, so you get alerted if something went haywire in your backup strategy.

![attic last backup terminal info](https://raw.githubusercontent.com/Kraymer/bulkdata/master/F-dotfiles/attic_prompt.png)

## Install notes
    
    cd ~/F-dotfiles; stow stow  # install stow ignore file
    cd @mac; stow @macbook      # install machine package that declare $ATTIC* vars 
    cd ..; stow attic
    cd attic; stow --target=/ @Daemon-macos
