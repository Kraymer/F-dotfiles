To create the packages list do :

    brew leaves | sort > packages.txt

When it comes to recovery, we can save time and effort by using xargs to pipe out each of the lines as an argument to brew install :

    cat packages.txt | xargs brew install
