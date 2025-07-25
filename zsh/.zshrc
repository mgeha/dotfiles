# Locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PATH configuration
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Load completion system
autoload -U compinit && compinit -i

# Theming and prompt
autoload -U promptinit && promptinit
source ~/.zsh.d/gentoo_prompt.zsh
prompt_gentoo_setup blue green red


# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias dmesg='dmesg -T'
alias sshinsecure='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

if command -v bat >/dev/null 2>&1; then
  _batcmd="bat"
elif command -v batcat >/dev/null 2>&1; then
  _batcmd="batcat"
fi

if [[ -n "$_batcmd" ]]; then
  alias cat="$_batcmd --paging=never"
  alias less="$_batcmd"
fi

if command -v eza >/dev/null 2>&1; then
    alias ls='eza'
else
    alias ls='ls --color=auto'
fi
alias ll='ls -la'
alias lh='ls -lah'
alias wetter='curl https://v2.wttr.in/Wolnzach'
alias zupdate='curr_dir=$(pwd) && cd ~/.dotfiles && git pull && stow -t ~ zsh && source ~/.zshrc && cd "$curr_dir"'

# Disable Google Analytics for Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Shell options
setopt auto_cd
setopt append_history
setopt extended_history
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history

# History configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Completion system configuration
zstyle ':completion:*' special-dirs true

# Mac
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Misc
command -v thefuck >/dev/null 2>&1 && eval $(thefuck --alias)

# fzf
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
  source /usr/share/fzf/key-bindings.zsh
  export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
fi
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
  export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
fi
