[![][patreon]](https://www.patreon.com/kraymer)

[patreon]: https://img.shields.io/badge/-%E2%99%A1%20Donate%20-ff69b4

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


## Getting started


### Basic usage

1. edit `F-dotfiles/_stow/.stowrc` to indicate your home directory
1. setup `stow`, *inception style* : `stow -t ~ _stow`

Voila ! Now that `stow` is properly configured, you're ready to install any package via `stow <directory>` command.

### Customization

1. you probably want to clean the repository from original author dotfiles to keep only stow configuration package : `find . -maxdepth 1 -type d ! -name '[._]*' -exec rm -rv {} +`
1. create your own packages and auto-generate README.md files using `F-dotfiles` command.


## Rules

> *Walter -* That rules really tie the repo together, do they not?
> *The Dude -* Fuckin A ! <sup id="a2">[2](#f2)</sup>

### Documentation <sup><sub>[`f-dotfiles.py`](https://github.com/Kraymer/)

Dotfiles repositories are too often grimoire-like collection of ancient formulas, only usable by their original author.

F-dotfiles avoid this pitfall by paying special attention to packages documentation : run `pre-commit install` to enable [`f-dotfiles.py`](https://github.com/F-dotfiles/F-dotfiles/blob/master/docgen.py) hook that ensures that packages `README.md` tree listings are automatically updated when commiting.
Files descriptions that match the format `# <filename>: description` are extracted too and enrich the tree listing.

Others instructions like install notes and requirements should be manually entered by editing the `README.md` files directly, and can live peacefully alongside auto-generated tree view content.

### Directories naming <sup><sub>[`.stow-global-ignore`](https://github.com/F-dotfiles/F-dotfiles/blob/master/stow/.stow-global-ignore#L7)

Use a leading `@` for platform-specific packages (eg
  [`@mac`](https://github.com/F-dotfiles/F-dotfiles/blob/master/%40mac/)) so that such-named packages are not automatically symlinked when stowing parent package.

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
