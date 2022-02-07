## [`git`](https://git-scm.com/)

> I use `SublimeMerge` when I commit but rely on the CLI tool for the rest.   
> Git commands are sometimes weird, and I use my shell history/auto-completions abundantly to circumvent that rather than using a porcelain layer over git.


<!--- Tree block injection -->
    ├── .config
    │   └── git
    │       ├── credentials.example 	# 🔏 User credentials
    │       └── templates
    │           └── hooks
    │               └── post-checkout 	# mention code previously staged from current branch
    └── .gitconfig


### Requirements

`diff-so-fancy` <<https://github.com/so-fancy/diff-so-fancy/>>
