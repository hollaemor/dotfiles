# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall


if [ -f "$HOME/.zsh/scripts/gorilla.zsh" ]; then . "$HOME/.zsh/scripts/gorilla.zsh"; fi
if [ -f "$HOME/.zsh/scripts/other.zsh" ]; then . "$HOME/.zsh/scripts/other.zsh"; fi
if [ -f "$HOME/.zsh/scripts/plugins.zsh" ]; then . "$HOME/.zsh/scripts/plugins.zsh"; fi
if [ -f "$HOME/.zsh/scripts/aliases.zsh" ]; then . "$HOME/.zsh/scripts/aliases.zsh"; fi
if [ -f "$HOME/.zsh/scripts/secrets.zsh" ]; then . "$HOME/.zsh/scripts/secrets.zsh"; fi



export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="nvim"

eval "$(starship init zsh)"

source <(fzf --zsh)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# awrit
export PATH="$HOME/.local/bin:$PATH"

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"


# Added by Antigravity CLI installer
export PATH="/home/emmanuel/.local/bin:$PATH"
