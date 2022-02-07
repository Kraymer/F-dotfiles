![F-dotfiles banner](https://raw.githubusercontent.com/F-dotfiles/F-dotfiles/master/.github/img/banner.png)

# F-dotfiles

> **/ɛfdɒtfaɪlz/** :
>
> *n.* stands for *Full-fledged-Über-Clean-Kraymer dotfiles.*, an opiniated dotfiles organization scheme based on stow.
Great effort is put on self-documentation and ease of maintenance.


## Features

- **`stow` powered:** symlink dotfiles and thus keep them always up-to-date in your repository
- **topical organization:** organize dotfiles by application packages facilitating reuse across different machines
- **discoverability:** self-documented packages making the architecture easy to browse while staying compatible with `stow` symlinking mechanism


## Install

1. clone the repository : `git clone https://github.com/F-dotfiles/F-dotfiles.git ~/ ; cd ~/F-dotfiles`
1. setup `stow`, *inception style* : `stow -t ~ stow` 
1. install desired package via `stow <directory>` <sup id="a1">[1](#f1)</sup>

When needed, special install instructions are present in package `README.md` file


## Rules

> *Walter -* That rules really tie the repo together, do they not?  
> *The Dude -* Fuckin A ! <sup id="a2">[2](#f2)</sup>

### Documentation <sup><sub>[`f-dotfiles.py`](https://github.com/Kraymer/F-dotfiles/F-dotfiles/blob/master/f-dotfiles.py)

Dotfiles repositories are too often grimoire-like collection of ancient formulas, only usable by their original author.

F-dotfiles avoid this pitfall by paying special attention to packages documentation : run `pre-commit install` to enable [`f-dotfiles.py`](https://github.com/Kraymer/F-dotfiles/blob/master/f-dotfiles.py) hook that ensures that packages `README.md` tree listings are automatically updated when commiting.  
Files descriptions that match the format `# <filename>: description` are extracted too and enrich the tree listing.

Others instructions like install notes and requirements should be manually entered by editing the `README.md` files directly, and can live peacefully alongside auto-generated tree view content. 

### Ignore files <sup><sub>[[cf example]](https://github.com/F-dotfiles/F-dotfiles/blob/master/_sublime_text_3/.gitignore)</sub></sup>

Quoting stow [documentation](https://www.gnu.org/software/stow/manual/html_node/Installing-Packages.html#Installing-Packages) :

> if Stow can create a single symlink that points to an entire subtree within the package tree, it will choose to do that rather than create a directory in the target tree and populate it with symlinks.

`.gitignore` can be present in packages because of this behaviour, in order to avoid having your repository cluttered with unknown files.

### Secret files <sup><sub>[[cf example]](https://github.com/F-dotfiles/F-dotfiles/blob/master/git/.config/git/credentials.example)

Files that contain sensitive information and should not be published are kept secret using package specific `.gitignore` files.
Because the secret file itself is not tracked, a template is commited instead having same name but with the `.example` suffix appended. This template is intended to serve as a base for edition and can be renamed (removing the suffix) after its content is edited.



---
<i id="f1">1</i> it's because we installed `stow` package at step 2 that the flag `-t ~` can be omitted here, see [`.stowrc`](https://github.com/F-dotfiles/F-dotfiles/blob/master/stow/.stowrc) [⤸](#a1)  
<i id="f2">2</i> https://www.youtube.com/watch?v=ezQLP1dj_t8 [⤸](#a2)
