[[ -r /opt/local/etc/profile.d/bash_completion.sh ]] && source /opt/local/etc/profile.d/bash_completion.sh
[[ -r $HOME/.bash_aliases ]] && source "$HOME/.bash_aliases"
[[ -r $HOME/.fzf.bash ]] && source "$HOME/.fzf.bash"
bind '"ç": "\C-x\C-addi$(__fzf_cd__)\C-x\C-e\C-x\C-r\C-m"'
bind -m vi-command '"ç": "ddi$(__fzf_cd__)\C-x\C-e\C-x\C-r\C-m"'

if [[ $TERM_PROGRAM == iTerm.app ]]; then
  PS1="\u@\[\e[0;34m\]\h\[\e[0m\]:\[\e[1;35m\]\w\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[\e[1;36m\]%\[\e[0m\] "
else
  PS1="\u@\[\e[1;30m\]\h\[\e[0m\]:\[\e[0;33m\]\w\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[\e[0;34m\]%\[\e[0m\] "
fi

# http://unix.stackexchange.com/a/18443
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

complete -f unrar

set -o vi
export EDITOR=vim
export PAGER=vimpager
alias less=$PAGER
alias zless=$PAGER

pianobar() {
  [[ ! -d "/Volumes/RAM Disk" ]] && "$HOME/bin/createramdisk.sh 50"
  /opt/local/bin/pianobar 2>/dev/null | tee -a "/Volumes/RAM Disk/pianobar.stdout"
}

rbserve() {
  PORT=${1:-3000}
  ruby -run -e httpd . -p $PORT
}

# vim:ft=sh ts=2 sw=2 et
