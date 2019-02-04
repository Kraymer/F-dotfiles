**python <<http://www.python.org/>>  setup.**

    ├── .config
    │   └── flake8
    ├── .pylintrc
    ├── .pystartup	      Enable python interpreter history
    └── .zsh
        └── python.zsh    Setup PATH, source venv
        
### Requirements

`virtualenvwrapper` <<https://virtualenvwrapper.readthedocs.io/en/latest/>>

### Using `direnv` to sandbox a project's dependencies

    $ cd myproject
    $ echo "layout python" > .envrc
