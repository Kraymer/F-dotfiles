#!/bin/zsh

usage ()
{
  echo "USAGE: attic-backup.sh [ARCHIVE] [PATHS]

Create new archive and prune existing ones.

  ARCHIVE   archive to create. Default: \$ATTIC_REPOSITORY
  PATHS     paths to archive. Default: \$ATTIC_PATHS_TO_BACKUP"
}

# $1 - archive to create
# $2 - paths to archive
attic_backup() {
    local repository="${1:-$ATTIC_REPOSITORY}"
    local paths="${2:-$ATTIC_PATHS_TO_BACKUP}"

    local nowdate=`date "+%Y-%m-%d"`
    exclude_from=()
    if [[ $ATTIC_EXCLUDE_FILE ]]; then
        exclude_from=(--exclude-from "$ATTIC_EXCLUDE_FILE")
    fi
    echo "Creating attic"
    attic create -v --stats --exclude-caches "${exclude_from[@]}" $repository::$HOST-$nowdate $paths
    if [[ $? -eq 0 ]]; then
        daily=${ATTIC_DAILY:-7}
        weekly=${ATTIC_WEEKLY:-4}
        monthly=${ATTIC_MONTHLY:-6}

        attic prune -v $repository --keep-daily=$daily --keep-weekly=$weekly --keep-monthly=$monthly
        echo $nowdate > $ATTIC_LAST_BACKUP_FILE
    fi
}

main() {
    if [ "$1" = "-h" ]; then
      usage
      exit 0
    fi
    attic_backup "$@"
}
main "$@"
