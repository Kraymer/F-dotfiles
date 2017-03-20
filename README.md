![F-dotfiles banner](https://raw.githubusercontent.com/Kraymer/bulkdata/master/F-dotfiles/banner.png)

*F-dotfiles is an opiniated dotfiles organization scheme based on stow.   
Highest priorities are ease of maintenance and deployment on both Linux and OS X.*

## Install

- clone the repository : `git clone https://github.com/Kraymer/f-dotfiles.git ~/`  
  *Important:* it must be cloned in your `$HOME` for *.stowrc* files to work as
  expected
- execute `stow stow` first to install stow global ignore file

Then, edit around and stow away!

## Guidelines

### Directories naming rules

Few simple rules to make the nature of stow packages explicit :

- lowercase for packages to install in `$HOME`
- titlecase for packages to install as root in `/`, eg
  [`@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx)
- leading `@` for environment packages and subpackages, eg
  [`@mac`](https://github.com/Kraymer/F-dotfiles/blob/master/%40mac/), [`attic/@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx)
- leading `_` for non packages, eg [`_homebrew`](https://github.com/Kraymer/F-dotfiles/blob/master/_homebrew)

### Documentation

Each package has a `README.md` that introduces the package features.

### Secret files

Secret files that should not be published must have *.sec* or */sec/* in their filepath to be ignored by the root
`.gitignore` file. If not possible, then declare the file in a `/.gitignore` inside the containing package.  
*Example:* [qifqif package](https://github.com/Kraymer/F-dotfiles/tree/master/qifqif).

Each secret file should be accompagnied by an *.example* file that is commited instead, to illustrate the use.  

#### *How to keep secret files in the repository for easy deployment while having a public version without them on my Github?*

*Disclaimer: best practice is to NOT keep secrets files in a version system*

Create a branch *private* and add a private repository (paying on Github, but free elsewhere) as remote.  
Append `!*.secret` pattern to `/.gitignore`  
Use [git-secret](https://sobolevn.github.io/git-secret/#usage) to encrypt *sec* files and commit resulting *.secret* files in the repository.  
Merge *master* into *private* at will, and use the private repo for your own deployments.

### Cross-platform friendly

#### *Where to save a file that is installed at different locations depending on the OS ?*

Create the part of the filepath that is common to the two OS in `<package>/_common`. Then create a subpackage directory for each os and link the common file from it.  
*Example:* [sublime_text_3 package](https://github.com/Kraymer/F-dotfiles/tree/master/sublime_text_3/%40linux/.config/sublime-text-3)
