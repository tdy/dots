export LC_COLLATE=POSIX
export MATLAB_USE_USERWORK=1
export CHROOT="$HOME/jail"

export EWS_SVN=https://subversion.ews.illinois.edu/svn
export EWS_LINUX=linux.ews.illinois.edu

export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=xim
export GTK_IOM_MODULE=xim

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS=/usr/share
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$HOME/bin:$PATH"
export PATH="$PATH:$SZGBIN"
export PATH="$PATH:$HOME/.local/lib/npm/bin"
eval "$(rbenv init -)"

# vim:ft=sh ts=2 sw=2 et
