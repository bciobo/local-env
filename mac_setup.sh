#!/usr/bin/env zsh

xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install --cask iterm2
sH -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p ~/development
cd development
git clone git@github.com:bciobo/local-env.git
cd
ln -s development/local-env/.zshrc .zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
source .zshrc

brew install python
brew install pyenv
brew install pyenv-virtualenvwrapper

brew install itsycal
brew install --cask transmission
brew install --cask brave-browser
brew install --cask notion
brew install --cask spotify
brew install --cask 1password
brew install --cask vlc
brew install --cask slack
brew install --cask pycharm 
brew install postgresql
brew install npm
brew install nvm
brew install --cask postman
brew install --cask sublime-text
brew install gh

brew install ngrok/ngrok/ngrok