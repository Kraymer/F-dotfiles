# Print all commits that modified files matching given pattern
#   $1 filename pattern 
git_commits_on_files() {
    for REV in `git rev-list master --abbrev-commit`
    do
      FILEPATH=`git diff-tree --no-commit-id --name-only --abbrev -r $REV | grep $1`
      echo "$REV $FILEPATH" | grep $1
    done
}

git_filesize() {
git log $1 | grep "^commit" | cut -f2 -d" " | while read hash; do
   echo -n "$hash -- "
   git show $hash:$1 | wc -c
done
}
