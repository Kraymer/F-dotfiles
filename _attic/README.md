## [Attic](https://attic-backup.org/)

    └── .zsh
        └── functions_attic.zsh
        
This package defines a zsh wrapper function `attic_backup` that merges `create`
and `prune` subcommands into a single execution: it makes sense to prune old
archives after a successfull backup.  
It introduces `attic_last_backup` that echo date of last successfull backup, so
you get alerted at your shell start if something went haywire in your backup
strategy.

![attic last backup terminal info](https://dl.dropboxusercontent.com/u/1026715/github/_dotfiles/attic_prompt.png)

### .zsh/functions_attic.zsh

- `attic_backup REPOSITORY PATHS_TO_BACKUP`: create an archive, prune existing ones and
  write date of execution on filesystem.

- `attic_last_backup MAX_DELAY`: read date of last execution on filesystem and
  print it. Print in red if more than *MAX_DELAY* days elapsed since last
  backup.
