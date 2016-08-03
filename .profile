# http://superuser.com/a/583502
if [[ -r /etc/profile ]]; then
  PATH=""
  source /etc/profile
fi

export MATLAB_USE_USERWORK=1

export EWS_SVN=https://subversion.ews.illinois.edu/svn
export EWS_LINUX=linux.ews.illinois.edu

export MANPATH="/opt/local/share/man:$MANPATH"

export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/Applications/MATLAB_R2013a.app/bin"
export PATH="$PATH:$SZGBIN"

# npm
export PATH="$PATH:$HOME/.local/lib/npm/bin"

# rvm
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# macports
export SHELL=/opt/local/bin/bash
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# vim:ft=sh ts=2 sw=2 et
