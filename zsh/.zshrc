if [ -z $TMUX ]; then; tmux new-session -A -s main; fi
source ~/.oh_my.zsh

# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))
for file in ${config_files}
do
  source $file
done

