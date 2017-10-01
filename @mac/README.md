**macOS specific setup**
 
    ├── .config
    │   └── .gitconfig.sec                I use same git credentials on my macs 
    ├── .zsh
    │   ├── mac-aliases.zsh               Standard terminal commands mac aliases
    │   ├── mac-vars.sec.zsh              (secret) Env variables definitions
    │   └── mac-vars.zshenv               Env variables definitions

    
This package installs configuration files, aliases, functions, etc. for a macOS environment.
Use subpackages for configuration specific to a mac instance.

### Subpackages

- [@macbook](@macbook)
- [@macmini](@macmini)
