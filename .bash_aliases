shopt -s expand_aliases 2>/dev/null

alias ls='ls -G'
alias weechat='su - weechat -c weechat-curses'
alias ctw='ctw --refresh=10 --nometric'
alias mpvn='mpv --no-video'
alias ipy='ipython --no-confirm-exit'
alias ipy2='ipython-2.7 --no-confirm-exit'
alias ipy3='ipython-3.4 --no-confirm-exit'
alias virtualenv2='virtualenv-2.7'
alias virtualenv3='virtualenv-3.4'
alias port='port -v'
alias preview='open -a Preview'
alias gae='/opt/local/share/google_appengine/dev_appserver.py'
alias tmux='tmux -2'
alias tb='nc termbin.com 9999'
alias octave='octave --no-gui-libs'

alias pbp='echo -n 'p' > $HOME/.config/pianobar/ctl'
alias pbn='echo -n 'n' > $HOME/.config/pianobar/ctl'
alias pbt='echo -n 't' > $HOME/.config/pianobar/ctl'
alias pbi='echo -n 'i' > $HOME/.config/pianobar/ctl'
alias pb-='echo -n '-' > $HOME/.config/pianobar/ctl'
alias pb+='echo -n '+' > $HOME/.config/pianobar/ctl'
alias pbq='echo -n 'q' > $HOME/.config/pianobar/ctl'

# vim:ft=sh ts=2 sw=2 et
