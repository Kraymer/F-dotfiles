_dotfiles
=========

GNU stow/.gitignore setup combo to easily deploy dotfiles while preserving sensitive data.

[Ygritte meme](https://dl.dropboxusercontent.com/u/1026715/ygritte-meme.png)

No-fluff dotfiles setup for free folks willing to go beyond the dots.

What s included ?
-----------------

- stowable **topics oriented files hierarchy**. Non stowable packages directories
  have a leading `-`
- **unpublished sensitive data files**. .gitignore catch all filenames with a
  leading `-`
- **multi-platform configurations** possible. Use `configure.sh` script to activate
  `.stow-local-ignore` files for your platform.
- `README.md` instructions file per directory
