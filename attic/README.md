## [Attic](https://attic-backup.org/)

Requires `$ATTIC_PATHS_TO_BACKUP` `$ATTIC_REPOSITORY`  
to be defined in a @package

This package defines a zsh wrapper function `attic_backup` that merges `create`
and `prune` subcommands into a single execution: it makes sense to prune old
archives after a successfull backup.

`attic_last_backup` echos date of last successfull backup, so you get alerted
at your shell start if something went haywire in your backup strategy.

![attic last backup terminal info](https://dl.dropboxusercontent.com/u/1026715/github/F-dotfiles/attic_prompt.png)
