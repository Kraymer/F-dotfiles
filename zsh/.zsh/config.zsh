TMOUT=60  # refresh prompt every minute (thus updating PS1 'hour' component)

# Completion system
autoload -U compinit
compinit
_comp_options+=(globdots)	# auto-complete dot files

# GNU core utilities
eval `dircolors ~/.zsh/dircolors.256dark`	# colored ls
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt EXTENDED_HISTORY # add timestamps to history
setopt SHARE_HISTORY    # share history between sessions ???
setopt APPEND_HISTORY   # adds history

# ssh-agent
eval "$(ssh-agent -s)"

# set various options
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt NO_BG_NICE       # don't nice background tasks
setopt NO_CASE_GLOB     # Case insensitive globbing
setopt NO_LIST_BEEP

DISABLE_UNTRACKED_FILES_DIRTY="true" # makes repository status check for large repositories much faster
