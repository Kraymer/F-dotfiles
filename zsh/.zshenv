# .zshenv is always sourced, define here exported variables that should
# be available to other programs.

export EDITOR=nano
export PAGER=more

export PATH=$PATH:~/bin:/usr/local/bin

# load zsh config files

# dir needs to exist for the ** globbing to work
# otherwise stow create a 'local' symlink that isn't considered by **
mkdir -p ~/.zsh/local
env_config_files=(~/.zsh/**/*.zshenv)
for file in ${env_config_files}
do
  source $file
done

export TERM="xterm-256color"
