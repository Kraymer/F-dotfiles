## [`Sublime Text 3`](https://www.sublimetext.com)

My preferences and packages to install with their settings.

Package tree:

_sublime_text_3
├── .gitignore
├── @linux
│   └── .config
│       └── sublime-text-3
│           └── Packages
│               └── User -> ../../../../_common/Packages/User
├── @osx
│   └── Library
│       └── Application\ Support
│           └── Sublime\ Text\ 3
│               └── Packages -> ../../../../_common/Packages
├── README.md
└── _common
    └── Packages
        └── User
            ├── Default\ (Linux).sublime-mousemap
            ├── Flake8Lint.sublime-settings
            ├── GitGutter.sublime-settings
            ├── Markdown.sublime-settings
            ├── Monokai\ (Flake8Lint).tmTheme
            ├── Package\ Control.sublime-settings
            ├── Preferences.sublime-settings
            └── pep8_autoformat.sublime-settings

13 directories, 10 files

---

### Install notes

Don't stow the whole package `sublime_text_3` but install subpackage corresponding to your platform : 
- [@linux](https://github.com/Kraymer/F-dotfiles/tree/master/sublime_text_3/%40linux)
- [@osx](https://github.com/Kraymer/F-dotfiles/tree/master/sublime_text_3/%40osx)
