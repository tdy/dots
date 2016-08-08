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

# macports
export SHELL=/opt/local/bin/bash
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# npm
export PATH="$HOME/.local/lib/npm/bin:$PATH"

# rvm
eval "$(rbenv init -)"

# vim:ft=sh ts=2 sw=2 et
