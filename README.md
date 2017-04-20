![F-dotfiles banner](https://raw.githubusercontent.com/Kraymer/bulkdata/master/F-dotfiles/banner.png)

*F-dotfiles is an opiniated dotfiles organization scheme based on stow.   
Highest priorities are ease of maintenance and deployment on both Linux and OS X.*

- **`stow` powered:** symlink dotfiles and thus keep them always up-to-date in your repository
- **topical organization:** organize dotfiles by application facilitating reuse across different machines
- **clever naming scheme:** the repository architecture is easy to browse while staying compatible with `stow` copy mechanism
- **KISS:** there is deliberately none build script involved at all, the repository consist of dotfiles all installable using same modus operandi (`stow <directory>`)
- **documentation:** each package has a *README.md* which present its purpose and a flat `tree` view of its files. Install notes and requirements can also be listed. 

## Install

1. clone the repository : `git clone https://github.com/Kraymer/f-dotfiles.git ~/`
1. setup `stow`, *inception style* : `stow -t ~ stow` 
1. install desired package via `stow <directory>` <sup id="a1">[1](#f1)</sup>

When needed, special install instructions are present in package `README.md` file.

## Rules

> *Walter -* That rules really tied the repo together, did it not?  
> *The Dude -* Fuckin A ! <sup id="a2">[2](#f2)</sup>

### Directories naming

- lowercase for packages to install in `$HOME` (the default)
- titlecase for packages to install as root in `/`, eg
  [`@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx)
- leading `@` for environment packages and subpackages, eg
  [`@mac`](https://github.com/Kraymer/F-dotfiles/blob/master/%40mac/), [`attic/@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx)
- leading `_` for non packages, eg [`_homebrew`](https://github.com/Kraymer/F-dotfiles/blob/master/_homebrew) meaning that these directories must not be *stowed*

Having a convention for subpackage naming enable us to setup stow properly so that subpackages are not symlinked when stowing parent package, see [.stow-global-ignore](https://github.com/Kraymer/F-dotfiles/blob/master/stow/.stow-global-ignore#L7) 

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

---
<b id="f1">1</b> it's because we installed `stow` package at step 2 that the flag `-t` can be omitted here, see [.stowrc](https://github.com/Kraymer/F-dotfiles/blob/master/stow/.stowrc) [↩](#a1)
<b id="f2">2</b> https://www.youtube.com/watch?v=ezQLP1dj_t8 [↩](#a2)
