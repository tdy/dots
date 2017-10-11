[[ $- != *i* ]] && return

export GITAWAREPROMPT="$HOME/.bash/git-aware-prompt"
[[ -r $GITAWAREPROMPT/main.sh ]] && source "$GITAWAREPROMPT/main.sh"
[[ -r $HOME/.bash_aliases ]] && source "$HOME/.bash_aliases"
[[ -r $HOME/.dir_colors ]] && source "$HOME/.dir_colors"
[[ -r $HOME/.fzf.bash ]] && source "$HOME/.fzf.bash"
[[ -r $HOME/.bash_login ]] && source "$HOME/.bash_login"

PS1="\u@\[\e[1;30m\]\h\[\e[0m\]:\[\e[0;33m\]\w\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[\e[0;34m\]%\[\e[0m\] "

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

complete -cf sudo
complete -f unrar

set -o vi
export EDITOR=vim
export PAGER=vimpager
alias less=$PAGER
alias zless=$PAGER

aurploader() {
  mkaurball -f && /usr/bin/aurploader -kal "$XDG_CONFIG_HOME/aurploader.conf" "$@"
}

rbserve() {
  PORT=${1:-3000}
  ruby -run -e httpd . -p $PORT
}

# vim:ft=sh ts=2 sw=2 et
