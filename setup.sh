#!/bin/bash
set -eufo pipefail

echo " Setting up dotfiles."

if xcode-select -p &> /dev/null; then
  echo " Xcode command line tools are already installed."
else
  echo " Installing Xcode command line tools..."
  sudo xcode-select --install &> /dev/null

  while ! xcode-select -p &> /dev/null; do
    sleep 5
  done
  echo " Xcode command line tools installed successfully."
fi

if which -s "brew"; then
  echo " Homebrew is already installed."
else
  echo " Installing Homebrew"
  yes "" | INTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo " Homebrew installed successfully."
fi

if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  echo " oh-my-zsh is already installed."
else
  echo " Installing oh-my-zsh"
  yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo " oh-my-zsh installed successfully."
fi

if which -s "chezmoi"; then
  echo " Chezmoi is already installed."
else
  echo " Installing Chezmoi"
  brew install chezmoi
fi

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo " Chezmoi already initialized, pulling latest changes..."
  chezmoi update
  echo " Chezmoi updated"
else
  chezmoi init lrnt
  chezmoi apply
  echo " Chezmoi initialized"
fi
