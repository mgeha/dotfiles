sudo apt update && sudo apt install -y zsh git stow && git clone https://github.com/mgeha/dotfiles.git ~/.dotfiles && stow -t ~ -d ~/.dotfiles zsh && chsh -s $(which zsh) && exec zsh
