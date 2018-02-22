alias git-log-since-rlz='git log --oneline --pretty=format:"%h%x09%an%x09%s" --no-merges `git describe --abbrev=0 --tags`..HEAD'
