_dotfiles
=========

![Ygritte meme](https://dl.dropboxusercontent.com/u/1026715/ygritte-meme.png)

No-fluff dotfiles setup based on [stow](https://taihen.org/managing-dotfiles-with-gnu-stow/), for free folks willing to go *beyond the dots*.

What's included ?
-----------------

- stowable **topics oriented files hierarchy**. Non stowable packages directories
  have a leading `-`
- **unpublished sensitive data files**. .gitignore catch all filenames with a
  leading `-`
- **multi-platform configurations** possible via symlinking
- `README.md` instructions file per directory

Install
-------

- run `git clone https://github.com/Kraymer/_dotfiles.git`
- edit around
- run `_dotfiles/configure.sh` to activate `.stow-local-ignore` packages files
  for your platform.
