shopt -s expand_aliases 2>/dev/null

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias startx='exec startx'
alias weechat='su - weechat -c weechat-curses'
alias irc='urxvtc -name irc -e sh -c "ssh apt -t \"screen -x irc\""'
alias ctw='ctw --refresh=10 --nometric'
alias mpvn='mpv --no-video'
alias ipython2='ipython2 --no-confirm-exit'
alias ipy='ipython2 --no-confirm-exit'
alias tmux='tmux -2'
alias tb='nc termbin.com 9999'
alias octave='octave --no-gui-libs'

alias pianobar="$XDG_CONFIG_HOME/pianobar/control-pianobar.sh p"
alias pbp='echo -n 'p' > $HOME/.config/pianobar/ctl'
alias pbn='echo -n 'n' > $HOME/.config/pianobar/ctl'
alias pbt='echo -n 't' > $HOME/.config/pianobar/ctl'
alias pbi='echo -n 'i' > $HOME/.config/pianobar/ctl'
alias pb-='echo -n '-' > $HOME/.config/pianobar/ctl'
alias pb+='echo -n '+' > $HOME/.config/pianobar/ctl'
alias pbq='echo -n 'q' > $HOME/.config/pianobar/ctl'

# vim:ft=sh ts=2 sw=2 et
