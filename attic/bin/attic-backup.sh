#!/bin/bash

usage ()
{
  echo "USAGE: attic-backup.sh ARCHIVE PATH [PATH ...]

Create new archive and prune existing ones : keep 7 daily, 4 weekly, 6 monthly.

  ARCHIVE               archive to create
  PATH                  paths to archive"
  exit
}

# $1 - archive to create
# $2 - paths to archive
attic_backup() {
    DATE=`date "+%Y-%m-%d"`
    if ! attic create -v --stats $ATTIC_REPOSITORY::$HOSTNAME-$DATE $ATTIC_PATHS_TO_BACKUP;
        then
        attic prune -v $1 --keep-daily=4 --keep-weekly=4 --keep-monthly=6
        echo $DATE > ~/.local/attic_last_backup
    fi
}

main() {
    if [ "$#" -ne 2 ]
    then
      usage
    fi
    attic_backup "$@"
}
main "$@"
