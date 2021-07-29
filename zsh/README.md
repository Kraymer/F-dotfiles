# Zsh

    ├── .oh_my.zsh                Zsh theme and plugins
    ├── .p10k.zsh	              POWERLEVEL10K zsh theme config
    ├── .zsh
    │   ├── aliases.zsh
    │   ├── config.zsh            Configure shell behavior
    │   ├── dircolors.256dark     Colored ls
    │   └── functions.zsh         Custom shell functions
    ├── .zshenv                   Routine loading all .zshenv files
    └── .zshrc                    Routine loading all .zsh files

This package [loads Oh-My-Zsh](https://github.com/Kraymer/F-dotfiles/blob/master/zsh/.oh_my.zsh) and activate powerlevel10k theme.
It defines some [aliases](https://github.com/Kraymer/F-dotfiles/blob/master/zsh/.zsh/aliases.zsh) that adds sane options to core shell functions and GNU utilities.

![zsh prompt](https://raw.githubusercontent.com/Kraymer/F-dotfiles/master/.github/img/zsh_prompt.png)

### Customization

Others packages define environment variables or functions by writing shell files into `~/.zsh`.

`~/.zsshenv` sources all **.zshenv* files present in `~/.zsh` subfolders at zsh startup, and `~/.zshrc` do the same with **.zsh* files.

### Requirements

- `oh-my-zsh` <<https://github.com/robbyrussell/oh-my-zsh>>
- `powerlevel10k` <<https://github.com/romkatv/powerlevel10k/>>
- custom Oh-my-zsh plugins listed at the end of https://raw.githubusercontent.com/Kraymer/F-dotfiles/master/zsh/.oh_my.zsh
