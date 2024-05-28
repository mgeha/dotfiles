# Locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PATH configuration
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Load completion system
autoload -U compinit
compinit -i

# Theming and prompt
PS1="%n@%m:%~%# "

# Aliases
alias ...='cd ../..'
alias dmesg='dmesg -T'
alias cat='batcat'
alias ls='eza'
alias ll='ls -la'
alias lh='ls -lah'
alias wetter='curl https://v2.wttr.in/Wolnzach'

# Disable Google Analytics for Homebrew
export HOMEBREW_NO_GOOGLE_ANALYTICS=1

# Shell options
setopt auto_cd
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups  # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history  # share command history data

# History configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Completion system configuration
zstyle ':completion:*' special-dirs true
