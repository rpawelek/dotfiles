# Zinit installation
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# Plugins 
zinit wait lucid depth"1" for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions \
  Aloxaf/fzf-tab \
  djui/alias-tips \
  hlissner/zsh-autopair \
  OMZP::sudo \
  OMZP::colored-man-pages \
  OMZP::fancy-ctrl-z \

# Keybindings
bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# History
HISTSIZE=5000
HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color $realpath"
zstyle ":fzf-tab:complete:__zoxide_z:*" fzf-preview "ls --color $realpath"

# Aliases
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias dud="du -d 1 -h"
alias duf="du -sh"
alias t="tail -f"
alias fd="find . type -d -name"
alias ff="find . type f -name"
alias p="ps -f"
alias g="git"

# Path
. "$HOME/.cargo/env"

export GOPATH="$HOME/go"
export BUN_INSTALL="$HOME/.bun"
export PATH="$GOPATH/bin:$HOME/.mix/escripts:$BUN_INSTALL/bin:$PATH"

# Shell integrations
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(fzf --zsh)"
eval "$(direnv hook zsh)"
eval "$(zoxide init zsh)"

