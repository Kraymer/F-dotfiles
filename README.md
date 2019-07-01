![F-dotfiles banner](https://raw.githubusercontent.com/Kraymer/public/master/F-dotfiles/banner.png)

# F-dotfiles

> **/ɛfdɒtfaɪlz/** :
>
> *n.* stands for *Full-fledged-Über-Clean-Kraymer dotfiles.*, an opiniated dotfiles organization scheme based on stow.
Great effort is put on up-to-date documentation, ease of maintenance and deployment on both Linux and OS X.


## Features

- **`stow` powered:** symlink dotfiles and thus keep them always up-to-date in your repository
- **topical organization:** organize dotfiles by application facilitating reuse across different machines
- **clever naming scheme:** the repository architecture is easy to browse while staying compatible with `stow` symlinking mechanism
- **KISS:** there is deliberately none build script involved at all, the repository consist of dotfiles all installable using same modus operandi (`stow <directory>`)


## Install

1. clone the repository : `git clone https://github.com/Kraymer/F-dotfiles.git ~/ ; cd ~/F-dotfiles`
1. setup `stow`, *inception style* : `stow -t ~ stow` 
1. install desired package via `stow <directory>` <sup id="a1">[1](#f1)</sup>

When needed, special install instructions are present in package `README.md` file.

## Rules

> *Walter -* That rules really tie the repo together, do they not?  
> *The Dude -* Fuckin A ! <sup id="a2">[2](#f2)</sup>  

### Documentation

Dotfiles repositories are often grimoire-like, collection of ancient formulas.
I make the effort of documenting each package because the few infos given in
the `README.md` add up and can save a lot of time when configuring a new machine from scratch.

Each package has a `README.md` which present its purpose and a flat `tree` view of its files.
Install notes and requirements can also be listed.

### Directories naming

- lowercase for packages to install in `$HOME` (the default)
- titlecase for packages to install as root in `/` (eg
  [`@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx))
- leading `@` for environment packages and subpackages (eg
  [`@mac`](https://github.com/Kraymer/F-dotfiles/blob/master/%40mac/), [`attic/@Daemon-osx`](https://github.com/Kraymer/F-dotfiles/blob/master/attic/@Daemon-osx))
- leading `_` for non packages meaning that these directories must not be *stowed* (eg [`_homebrew`](https://github.com/Kraymer/F-dotfiles/blob/master/_homebrew)) 

Having a convention for subpackage naming enable us to write a [`.stow-global-ignore`](https://github.com/Kraymer/F-dotfiles/blob/master/stow/.stow-global-ignore#L7) file so that subpackages are not symlinked when stowing parent package.

### Ignore files <sup><sub>[[cf example]](https://github.com/Kraymer/F-dotfiles/blob/master/_sublime_text_3/.gitignore)</sub></sup>

Quoting stow [documentation](https://www.gnu.org/software/stow/manual/html_node/Installing-Packages.html#Installing-Packages) :

> if Stow can create a single symlink that points to an entire subtree within the package tree, it will choose to do that rather than create a directory in the target tree and populate it with symlinks.

`.gitignore` can be present in packages because of this behaviour, in order to avoid having your repository cluttered with unknown files. 
 
### Secret files <sup><sub>[[cf example]](https://github.com/Kraymer/F-dotfiles/blob/master/git/.config/git/credentials.local)

Files that contain sensitive information and should not be published are kept secret using package specific `.gitignore` files.  
These files are prominently listed in the package `README.md` with a ✏ symbol aside.  
Because the secret file itself is not tracked, a template is commited instead having same name but with the `.local` suffix appended. This template is intended to serve as a base for edition and can be renamed (removing the suffix) after its content is edited.

### Multi-platforms paths <sup><sub>[[cf example]](https://github.com/Kraymer/F-dotfiles/blob/master/_sublime_text_3/%40linux/.config/sublime-text-3/Packages/User)

For example, let's say you want to store one config file as `~/.config/myapp/spam.conf` on Linux and as `~/Library/myapp/spam.conf` on macOS.  

Put the shared part of filepaths in a shared `_common` folder : `myapp/_common/myapp/spam.conf`  
Then, create one subpackage per OS to host each specific directories structure and use symlink to bridge to `_common` files :  
`myapp/@linux/.config -> ../ _common/myapp/`  
`myapp/@macOS/Library -> ../ _common/myapp/`

---
<i id="f1">1</i> it's because we installed `stow` package at step 2 that the flag `-t ~` can be omitted here, see [.stowrc](https://github.com/Kraymer/F-dotfiles/blob/master/stow/.stowrc) [⤸](#a1)  
<i id="f2">2</i> https://www.youtube.com/watch?v=ezQLP1dj_t8 [⤸](#a2)
