#!/bin/sh
[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME="$HOME/.config"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

