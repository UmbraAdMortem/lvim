#!/bin/sh

sudo dnf install -y neovim

sudo dnf install -y make pip python npm node cargo ripgrep

npm config set prefix ~/.local

echo 'PATH=~/.local/bin:$PATH' >> ~/.profile

echo 'PATH=~/.local/bin:$PATH' >> ~/.zprofile

source ~/.profile

sudo npm install -g npm-check-updates

sudo ncu -g

sudo dnf install -y xsel

pip install pynvim

npm i -g neovim

LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

