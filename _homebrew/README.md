**Formulaes for [Homebrew](http://brew.sh) <<http://brew.sh>>,** *the missing package manager for macOS.*

    └── Brewfile         List of formulaes

## Instructions

To tap into additional repos of formulae :

    brew tap homebrew/science
    brew tap homebrew/dupes

To create the packages list do :

    brew leaves | sort > Brewfile

When it comes to recovery, we can save time and effort by using xargs to pipe out each of the lines as an argument to brew install :

    cat Brewfile | xargs brew install
