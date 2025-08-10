sudo apt update && sudo apt install -y git stow && git clone https://github.com/mgeha/dotfiles.git ~/dotfiles && cd ~/dotfiles/zsh && stow --target="$HOME" .
