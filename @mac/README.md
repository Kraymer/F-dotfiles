## OS X specific setup
 
    ├── .zsh
    │   ├── mac-aliases.zsh               Standard terminal commands mac aliases
    │   ├── mac-vars.sec.zsh              (secret) Env variables definitions
    │   └── mac-vars.zshenv               Env variables definitions
    ├── @macbook                        My macbook machine setup
    │   ├── .config
    │   │   └── .attic_exclude.sec        (secret) Paths to exclude from backups
    │   └── .zsh
    │       └── macbook-vars.sec.zsh      (secret) Env variables definitions
    ├── @macmini                        My macmini machine setup
    │   ├── .config
    │   │   └── .attic_exclude.sec        (secret) Paths to exclude from backups
    │   └── .zsh
    │       └── macmini-vars.sec.zsh      (secret) Env variables definitions
    
This package installs configuration files, aliases, functions, etc. for an OS X environment.

Use subpackages for configuration specific to a mac instance, eg [`@mac/@macbook`](https://github.com/Kraymer/F-dotfiles/tree/master/%40mac/%40macbook).
