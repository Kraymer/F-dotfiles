**Config files for `stow`<<https://www.gnu.org/software/stow/>>, the symlink farm manager.**

    ├── .stow-global-ignore     Ignore files based on F-dotfiles filenaming scheme
    └── .stowrc                 Set $HOME as default target dir
    
### Install notes

**Important:** it should be the first package you install as it is responsible for filtering *README* files and subpackages files trees when you stow a package.

Edit your `$HOME` path in [.stowrc](https://github.com/Kraymer/F-dotfiles/blob/master/stow/.stowrc).
