#!/bin/bash
function join_by { local IFS="$1"; shift; echo "$*"; }

set -x

cd "$(dirname "$0")"
str=`basename "$1"`
delimiter=__
s=$str$delimiter
array=();
while [[ $s ]]; do
    array+=( "${s%%"$delimiter"*}" );
    s=${s#*"$delimiter"};
done;
declare -p array

if [ ${#array[@]} -eq "1" ]; then
   dirpath=.
else
   dirpath=`join_by / ${array[@]::${#array[@]}-1}`
   mkdir -p $dirpath   # all elements but last
fi

fullpath=$dirpath/${array[${#array[@]}-1]}
mv $1 $fullpath
git add $fullpath
git commit -am "Add $fullpath" 
git push
branch=`git rev-parse --abbrev-ref HEAD`
gituser=`grep origin -A1 .git/config|grep url|cut -d '/' -f 4`
echo https://raw.githubusercontent.com/${gituser}/pub/$branch/${fullpath} | pbcopy

