alias v="nvim"
alias h="helix"
alias ls="eza --icons --hyperlink --git"
alias mine="cd ~/Documents/code/github.com/hollaemor/"
alias gorilla="cd ~/Documents/code/bitbucket.org/gorillaco/"

# Auto-activate Python virtual environment on directory change
function chpwd() {
    # Deactivate any current virtual environment
    if [[ -n "$VIRTUAL_ENV" ]]; then
        deactivate
    fi

    # Check for common virtual environment directories
    for venv_dir in .venv venv env virtualenv; do
        if [[ -f "$venv_dir/bin/activate" ]]; then
            source "$venv_dir/bin/activate"
            break
        fi
    done
}
