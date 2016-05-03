export ATTIC_LAST_BACKUP_FILE=${HOME}/.local/attic_last_backup

# Read date of last execution on filesystem and print it. Print in red if more
# than MAX_DELAY days elapsed since last backup.
#
# $1 - max delay since last backup in days. Over this period output is printed
#      in red.
attic_last_backup() {
    local max_delay=$1; shift

    color=`tput setaf 1`  # red
    if [ ! -f $ATTIC_LAST_BACKUP_FILE ]; then
        attic_last_backup_date='N/A'
    else
        local attic_last_backup_date=`more $attic_last_backup_file`
        local days_since_last_backup=`echo $(( ($(date +%s) - $(date --date=${attic_last_backup_date} +%s) )/(60*60*24) ))`
        case $days_since_last_backup in
        [0-$1])
          color=""
          ;;
        esac
    fi
    echo "Last backup:" ${color}${attic_last_backup_date}
}


main() {
    attic_last_backup 2
}
main "$@"
