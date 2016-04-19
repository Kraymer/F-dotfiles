# ls colors
eval `dircolors ~/.zsh/dircolors.256dark`

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY # add timestamps to history
setopt SHARE_HISTORY    # share history between sessions ???
setopt APPEND_HISTORY   # adds history

DISABLE_UNTRACKED_FILES_DIRTY="true" # makes repository status check for large repositories much faster

# setopt...
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt NO_BG_NICE       # don't nice background tasks
setopt NO_CASE_GLOB     # Case insensitive globbing
setopt NO_LIST_BEEP
setopt RM_STAR_WAIT     # 10 second wait if you do something that will delete everything

