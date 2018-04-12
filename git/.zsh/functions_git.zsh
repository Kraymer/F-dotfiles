# Print all commits that modified files matching given pattern
#   $1 filename pattern 
git_commits_on_files() {
    for REV in `git rev-list master --abbrev-commit`
    do
      FILEPATH=`git diff-tree --no-commit-id --name-only --abbrev -r $REV | grep $1`
      echo "$REV $FILEPATH" | grep $1
    done
}
