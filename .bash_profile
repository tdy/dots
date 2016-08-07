export GITAWAREPROMPT="$HOME/.bash/git-aware-prompt"
[[ -r $GITAWAREPROMPT/main.sh ]] && source "$GITAWAREPROMPT/main.sh"
[[ -r $HOME/.profile ]] && source "$HOME/.profile"
[[ -r $HOME/.bashrc ]] && source "$HOME/.bashrc"
[[ -r $HOME/.bash_login ]] && source "$HOME/.bash_login"

# vim:ft=sh ts=2 sw=2 et
