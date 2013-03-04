[[ $- != *i* ]] && return # interactive session
. "$HOME/.dir_colors"
complete -cf sudo
PS1='\u@\[\e[0;32m\]\h\[\e[0m\]:\w\[\e[0;32m\]%\[\e[0m\] '

export EDITOR=vim
export PAGER=vimpager
export PATH="$PATH:$HOME/bin:$HOME/.gem/ruby/1.9.1/bin:$SZGBIN"
export CHROOT="$HOME/jail"
export LC_COLLATE=POSIX
export EWS_SVN=https://subversion.ews.illinois.edu/svn

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS=/usr/share
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME="$HOME/.cache"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias startx='exec startx'
alias weechat='su - weechat -c weechat-curses'
alias irc='urxvtc -name irc -e sh -c "ssh apt -t \"screen -x irc\""'
alias ctw='ctw --refresh=10 --nometric'
alias mplayer='mplayer -fs'
alias pianobar="$XDG_CONFIG_HOME/pianobar/control-pianobar.sh p"
alias ipython2='ipython2 --no-confirm-exit'
alias ipy='ipython2 --no-confirm-exit'

function aurploader() {
  makepkg -fSA && /usr/bin/aurploader -kal "$XDG_CONFIG_HOME/aurploader.conf" "$@"
}
