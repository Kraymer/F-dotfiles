# virtualenvwrapper
source virtualenvwrapper.sh

# Add `pip install -u` dest path to PATH
export PATH=$PATH:~/.local/bin

# Add python2 to PATH
PY_VERSION=`python2 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export PATH=$PATH:${HOME}/Library/Python/${PY_VERSION}/bin

# Add python3 to PATH
PY_VERSION=`python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export PATH=$PATH:${HOME}/Library/Python/${PY_VERSION}/bin

