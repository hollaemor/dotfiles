export POSTGRES_HOST="localhost"
export POSTGRES_PORT="5444"
export POSTGRES_PASSWORD="cargoone"
export PSQL_EDITOR="nvim"
export PATH="$HOME/Documents/code/gitlab.com/cargoone/k8s-utils:$PATH"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"

# locally built rambler
alias rambler="$HOME/Documents/code/github.com/rambler/rambler"
export PATH="$HOME/Documents/code/github.com/rambler:$PATH"


# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if [ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then . "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"; fi
if [ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then . "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"; fi
if [ -f "/usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh" ]; then . "//usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh"; fi
if [ -f "/usr/share/doc/pkgfile/command-not-found.zsh" ]; then . "/usr/share/doc/pkgfile/command-not-found.zsh"; fi

if [ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then . "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"; fi
if [ -f "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then . "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh"; fi


# c1 useful aliases
alias pstaging="proxy_db staging 5433"
alias pprod="proxy_db production 5999"

alias dstaging="pgcli -U emmanuel.oriarewo -h localhost -p 5433 -d user-service"
alias dprod="pgcli -U emmanuel.oriarewo -h localhost -p 5999 -d user-service"

# alias c1="$HOME/.pyenv/versions/3.12.8/envs/cli/bin/c1"

# NVM - Node Version Manager
if [ -f "/usr/share/nvm/init-nvm.sh" ]; then . "/usr/share/nvm/init-nvm.sh"; fi
