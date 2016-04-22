ATTIC_LAST_BACKUP=${HOME}/.local/attic_last_backup

# Usage: attic-backup ARCHIVE
attic_backup() {
    DATE=`date "+%Y-%m-%d"`
    attic create -v --stats                  \
        $ATTIC_REPOSITORY::$HOSTNAME-$DATE   \
        $ATTIC_PATHS_TO_BACKUP && echo $DATE > $ATTIC_LAST_BACKUP
        #    || echo "FAIL" | mutt -F ~/.muttrc -s "Backup macbook failed" kraymer@gmail.com

    # Use `prune` to maintain 7 daily, 4 weekly and 6 monthly archives.
    attic prune -v $1 --keep-daily=4 --keep-weekly=4 --keep-monthly=6
}

attic_last_backup() {
    echo "Last backup:" `more $ATTIC_LAST_BACKUP`
}
attic_last_backup
