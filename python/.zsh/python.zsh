# Add python2 to PATH
PY_VERSION=`python2 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export PATH=$PATH:${HOME}/Library/Python/${PY_VERSION}/bin

# Add python3 to PATH
PY_VERSION=`python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export PATH=$PATH:${HOME}/Library/Python/${PY_VERSION}/bin

# Enable python interpreter history
export PYTHONSTARTUP=~/.pystartup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
