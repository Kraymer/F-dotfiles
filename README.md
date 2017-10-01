![F-dotfiles banner](https://raw.githubusercontent.com/Kraymer/bulkdata/master/F-dotfiles/banner.png)

*F-dotfiles is an opiniated dotfiles organization scheme based on stow.   
Highest priorities are ease of maintenance and deployment on both Linux and macOS.*

- **`stow` powered:** symlink dotfiles and thus keep them always up-to-date in your repository
- **topical organization:** organize dotfiles by application facilitating reuse across different machines
- **clever naming scheme:** the repository architecture is easy to browse while staying compatible with `stow` symlinking mechanism
- **KISS:** there is deliberately none build script involved at all, the repository consist of dotfiles all installable using same modus operandi (`stow <directory>`)
- **documentation:** each package has a *README.md* which present its purpose and a flat `tree` view of its files. Install notes and requirements can also be listed. 

## Install

1. clone the repository : `git clone https://github.com/Kraymer/f-dotfiles.git ~/`
1. setup `stow`, *inception style* : `stow -t ~ stow` 
1. install desired package via `stow <directory>` <sup id="a1">[1](#f1)</sup>

When needed, special install instructions are present in package `README.md` file.

## Rules

> *Walter -* That rules really tie the repo together, do they not?  
> *The Dude -* Fuckin A ! <sup id="a2">[2](#f2)</sup>

### Directories naming

- lowercase for packages to install in `$HOME` (the default)
- titlecase for packages to install as root in `/`, eg
  [`@Daemon-macos`](attic/@Daemon-macos)
- leading `@` for environment packages and subpackages, eg
  [`@mac`](@mac), [`attic/@Daemon-macos`](attic/@Daemon-macos)
- leading `_` for non packages, eg [`_homebrew`](_homebrew) meaning that these directories must not be *stowed*

Having a convention for subpackage naming enable us to write a [`.stow-global-ignore`](stow/.stow-global-ignore#L7) file so that subpackages are not symlinked when stowing parent package. 

### Ignore files

Quoting stow [documentation](https://www.gnu.org/software/stow/manual/html_node/Installing-Packages.html#Installing-Packages) : 

> if Stow can create a single symlink that points to an entire subtree within the package tree, it will choose to do that rather than create a directory in the target tree and populate it with symlinks.

`.gitignore` can be present in packages because of this behaviour, in order to avoid having your repository cluttered with unknown files, see [example](sublime_text_3/.gitignore).

### Secret files

Secret files, ie files that should not be commited/published, must have *.sec* or */sec/* in their filepath to be ignored by the root `.gitignore` file.
Each secret file should be accompagnied by an *.example* file that is commited instead, to illustrate the use.

Keep your secret files as short as possible to limit their influence as it complicates deployments (as they cannot be just pulled from github). 

See [example](@mac/@macbook/.config/.gitconfig.sec.example).

### Multi-platforms paths 

**Where to save a file that is installed at different locations depending on the OS ?**

The trick is to have one package per OS, just to create each specific directories structure properly.
Then create the part of the filepath that is common to the two OS in `<package>/_common`, put the files in it, symlink from the subpackages to that location.

Feel confused ? Check [example](sublime_text_3/@linux/.config/sublime-text-3)

---
<i id="f1">1</i> it's because we installed `stow` package at step 2 that the flag `-t ~` can be omitted here, see [.stowrc](stow/.stowrc) [⤸](#a1)  
<i id="f2">2</i> https://www.youtube.com/watch?v=ezQLP1dj_t8 [⤸](#a2)
