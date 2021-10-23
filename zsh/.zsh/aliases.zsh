# aliases.zsh: shell aliases

alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} --exclude="*.pyc"'
alias h='fc -li 1000'
alias rm='rm -i'
alias nano='nano -c'
alias lc='$($(fc -ln -1) |& tail -1)'

# suffix aliases, see https://blog.sebastian-daschner.com/entries/zsh-aliases 
alias -s log=nano
alias -s conf=nano

