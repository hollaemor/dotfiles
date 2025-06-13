export GOBIN="$HOME/.config/go/bin"
export GOPATH="$HOME/.config/go"

export PATH="$PATH:$GOPATH:$GOBIN"
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
