![F-dotfiles banner](https://raw.githubusercontent.com/Kraymer/bulkdata/master/F-dotfiles/banner.png)

*F-dotfiles is an opiniated dotfiles organization scheme based on stow.   
Highest priorities are ease of maintenance and deployment on both Linux and OS X.*

## Install

- clone the repository : `git clone https://github.com/Kraymer/f-dotfiles.git ~/`  
- execute `stow -t ~ stow` first, so that stow is properly configured for later dot files installs

Then, edit around and install package via `stow <package_name>` command.  
When needed, special install instructions are present in package `README.md` file.

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

dotfiles repos are usually an opaque heap of personal geeky setups.

I wanted to avoid that, that's why each package has a `README.md` that introduces the package features and the role of each package files.

### Secret files

Secret files that should not be published must have *.sec* or */sec/* in their filepath to be ignored by the root
`.gitignore` file.
Each secret file should be accompagnied by an *.example* file that is commited instead, to illustrate the use.

Keep your secret files as short as possible to limit their influence as it complicates deployments (as they cannot be just pulled from github). 

### Cross-platform friendly

#### *Where to save a file that is installed at different locations depending on the OS ?*

Create the part of the filepath that is common to the two OS in `<package>/_common`. Then create a subpackage directory for each os and link the common file from it.  
*Example:* [sublime_text_3 package](https://github.com/Kraymer/F-dotfiles/tree/master/sublime_text_3/%40linux/.config/sublime-text-3)
