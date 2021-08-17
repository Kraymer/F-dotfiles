## [`git`](https://git-scm.com/)

> I use `SublimeMerge` when I commit but rely on the CLI tool for the rest.
> Git commands are sometimes weird, and I use my shell history/auto-completions abundantly to circumvent that rather than using a porcelain layer over git.

Package tree:

git
├── .config
│   └── git
│       └── credentials.example
├── .gitconfig
├── .gitignore
├── .stow-local-ignore
├── .zsh
│   └── aliases_git.zsh
└── README.md

3 directories, 6 files

---

✏ **`credentials`**: secret file to enter your git identity (name and email)

### Requirements

`diff-so-fancy` <<https://github.com/so-fancy/diff-so-fancy/>>