attic_last_backup_file=${HOME}/.local/attic_last_backup


# $1 - repository
# $2 - paths to backup
attic_backup() {
    local repository=$1; shift
    local paths_to_backup=$1; shift

    local archive_name=${HOSTNAME}-`date "+%Y-%m-%d"`
    attic create -v --stats $repository::$archive_name   \
        $paths_to_backup && echo $date_now > $attic_last_backup_file
        #    || echo "FAIL" | mutt -F ~/.muttrc -s "Backup macbook failed" kraymer@gmail.com

    # Use `prune` to maintain 7 daily, 4 weekly and 6 monthly archives.
    attic prune -v $1 --keep-daily=4 --keep-weekly=4 --keep-monthly=6
}


# $1 - max delay since last backup in days. Over this period output is printed
#      in red.
attic_last_backup() {
    local max_delay=$1; shift

    local attic_last_backup_date=`more $attic_last_backup_file`
    local days_since_last_backup=`echo $(( ($(date +%s) - $(date --date=${attic_last_backup_date} +%s) )/(60*60*24) ))`
    case $days_since_last_backup in
    [0-$1])
      color=""
      ;;
    *)
      color=`tput setaf 1`  # red
      ;;
    esac

    echo "Last backup:" ${color}${attic_last_backup_date}
}


main() {
    attic_last_backup 2
}
main "$@"
