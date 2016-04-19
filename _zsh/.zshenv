# .zshenv is always sourced, define here exported variables that should
# be available to other programs.

export EDITOR=nano
export PAGER=more

export PATH=$PATH:~/bin:/usr/local/bin

# Add python3 bin path
PY_VERSION=`python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export PATH=$PATH:/Users/flap/Library/Python/${PY_VERSION}/bin/

export TERM="xterm-256color"
