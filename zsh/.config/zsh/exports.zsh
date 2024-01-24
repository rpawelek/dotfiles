#!/bin/sh
[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ -n "$XDG_CACHE_HOME" ]] || export XDG_CACHE_HOME="$HOME/.cache"
[[ -n "$XDG_DATA_HOME" ]] || export XDG_DATA_HOME="$HOME/.local/share"
[[ -n "$XDG_BIN_HOME" ]] || export XDG_BIN_HOME="$HOME/.local/bin"
[[ -n "$XDG_LIB_HOME" ]] || export XDG_LIB_HOME="$HOME/.local/lib"
[[ -n "$XDG_STATE_HOME" ]] || export XDG_STATE_HOME="$HOME/.local/state"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

export BROWSER="firefox"
export TERMINAL="blackbox"
export TERM="xterm-256color"

export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"

export PAGER="less"
export MANPAGER="less"

export PATH="$XDG_BIN_HOME:$PATH"
export PATH="$XDG_DATA_HOME/cargo/bin:$PATH"

# Remove clutter from home directory
export LESSHISTFILE="$XDG_DATA_HOME/less/history"
export GDBHISTFILE="$XDG_DATA_HOME/gdb/history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export _Z_DATA="$XDG_DATA_HOME/z"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export AFTMAN_ROOT="$XDG_DATA_HOME/aftman"

