[Attic](https://attic-backup.org/)

    .
    └── .zsh
        └── functions_attic.zsh

# functions_attic.zsh

- `attic_backup REPOSITORY PATHS_TO_BACKUP`: create an archive, prune existing ones and
  write date of execution on filesystem.

- `attic_last_backup MAX_DELAY`: read date of last execution on filesystem and
  print it. Print in red if more than DELAY_MAX days elapsed since last
  backup.
