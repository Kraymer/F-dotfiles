PY_VERSION=`python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`
export GOPATH=${HOME}/Dev/Go
export PATH=$PATH:${HOME}/Library/Python/${PY_VERSION}/bin/:${GOPATH}/bin
