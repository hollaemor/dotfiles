# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/emmanuel/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall


if [ -f "$HOME/.zsh/scripts/cargoone.zsh" ]; then . "$HOME/.zsh/scripts/cargoone.zsh"; fi
if [ -f "$HOME/.zsh/scripts/other.zsh" ]; then . "$HOME/.zsh/scripts/other.zsh"; fi
if [ -f "$HOME/.zsh/scripts/aliases.zsh" ]; then . "$HOME/.zsh/scripts/aliases.zsh"; fi

export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="nvim"

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/emmanuel/Documents/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/home/emmanuel/Documents/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/emmanuel/Documents/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/emmanuel/Documents/tools/google-cloud-sdk/completion.zsh.inc'; fi
