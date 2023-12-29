[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/aliases.zsh"

plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "ael-code/zsh-colored-man-pages"
plug "MichaelAquilina/zsh-you-should-use"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

# No icons in ls output
alias ls="eza --group-directories-first"

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

