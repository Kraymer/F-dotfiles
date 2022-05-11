## [`git`](https://git-scm.com/)

> I use `SublimeMerge` when I commit but rely on the CLI tool for the rest.   
> Git commands are sometimes weird, and I use my shell history/auto-completions abundantly to circumvent that rather than using a porcelain layer over git.


<!--- Tree block injection -->
    ├── .config
    │   └── git
    │       ├── credentials.example 	# 🔏 User credentials
    │       └── templates
    │           └── hooks
    │               └── post-checkout 	# prompt user to apply code previously stashed from target branch
    └── .gitconfig


### Requirements

- `delta` <<https://github.com/dandavison/delta>>
- `git-trim` <<https://github.com/jasonmccreary/git-trim>>
