#!/usr/bin/env zsh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install iterm2
brew install google-chrome
brew install dropbox
brew install --cask docker

brew install 1password
brew install 1password-cli

if (! docker stats --no-stream)
then
    # start docker if not running
    open /Applications/Docker.app
fi

#brew install adoptopenjdk/openjdk/adoptopenjdk8
#brew install adoptopenjdk/openjdk/adoptopenjdk9
#brew install adoptopenjdk/openjdk/adoptopenjdk10
#brew install adoptopenjdk/openjdk/adoptopenjdk11

brew install rectangle

brew install spotify
brew install slack

brew install webstorm
brew install datagrip
brew install intellij-idea
brew install pycharm

brew install postgresql

brew install postman

brew install watch

brew install tmux
# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
bind r source-file ~/.tmux.conf

brew install kube-ps1
brew install derailed/k9s/k9s

brew install asdf
# install specific version
asdf install kubectl 1.18.8
# set default version
asdf global kubectl 1.18.8

brew install sublime-text
cp "./Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

brew install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp .zshrc ~/.zshrc
cp .zsh_aliases ~/.zsh_aliases

mkdir -p ~/scripts
cp -r ./scripts/* ~/scripts
chmod +x ~/scripts/*

source ~/.zshrc
source ~/.zsh_aliases

gem install teamocil

# add your ssh-key to keychain
# ssh-add -K ~/.ssh/id_rsa
cp ssh.config ~/ssh/config
