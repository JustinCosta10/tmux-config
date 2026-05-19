#!/usr/bin/env bash
# Copy this repo's tmux + tmuxp config into place.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp "$DIR/tmux.conf" "$HOME/.tmux.conf"
mkdir -p "$HOME/.tmuxp"
cp "$DIR"/tmuxp/*.yaml "$HOME/.tmuxp/"

echo "Installed:"
echo "  $HOME/.tmux.conf"
echo "  $HOME/.tmuxp/  ($(ls "$DIR"/tmuxp | tr '\n' ' '))"
echo
echo "Reload a running tmux with:  tmux source ~/.tmux.conf"
