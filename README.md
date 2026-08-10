# tmux-config

My tmux and [tmuxp](https://github.com/tmux-python/tmuxp) configuration.

## Contents

- `tmux.conf` — main tmux config (prefix `Ctrl-A`, vi-style panes, mouse, clipboard)
- `tmuxp/` — tmuxp session layouts
  - `code.yaml` — simple two-pane `code` session
  - `supercode.yaml` — full `supercode` session (yazi, lazygit, terminals)

## Install on a new machine

```bash
git clone https://github.com/JustinCosta10/tmux-config ~/tmux-config
cd ~/tmux-config
./install.sh
```

`install.sh` copies `tmux.conf` to `~/.tmux.conf` and the YAMLs into `~/.tmuxp/`.
It overwrites those targets, so back them up first if they already exist.

## Usage

```bash
tmux                      # start tmux
tmuxp load code           # load the code session
tmuxp load supercode      # load the supercode session
```

## Notes

- macOS-specific: copy bindings use `pbcopy`. On Linux, swap for `xclip`/`wl-copy`.
- The prefix is `Ctrl-A`.
