# Zsh

<!--- Tree block injection -->
    ├── .oh_my.zsh 	# oh-my-zsh configuration
    ├── .p10k.zsh 	# Powerlevel10k configuration 
    ├── .zsh
    │   ├── aliases.zsh 	# shell aliases
    │   ├── config.zsh 	# shell system configuration
    │   ├── dircolors.256dark 	# Dark 256 color solarized theme for the color GNU ls utility.
    │   └── functions.zsh 	# sometimes aliases are not enough...
    ├── .zshenv
    └── .zshrc 	# load zsh config files in correct order

This package [loads Oh-My-Zsh](https://github.com/Kraymer/F-dotfiles/blob/master/zsh/.oh_my.zsh) and activate powerlevel10k theme.
It defines some [aliases](https://github.com/Kraymer/F-dotfiles/blob/master/zsh/.zsh/aliases.zsh) that adds sane options to core shell functions and GNU utilities.

### Customization

Others packages define environment variables or functions by writing shell files into `~/.zsh`.

`~/.zshenv` sources all **.zshenv* files present in `~/.zsh` subfolders at zsh startup, and `~/.zshrc` do the same with **.zsh* files.

### Requirements

- `oh-my-zsh` <<https://github.com/robbyrussell/oh-my-zsh>>
- `powerlevel10k` <<https://github.com/romkatv/powerlevel10k/>>
- custom Oh-my-zsh plugins listed at the end of https://raw.githubusercontent.com/Kraymer/F-dotfiles/master/zsh/.oh_my.zsh
