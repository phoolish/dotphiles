#!/bin/bash
if [ -d "$HOME/.bash-git-prompt" ]; then
  cd "$HOME/.bash-git-prompt"
  git pull origin master
else
  git clone https://github.com/magicmonty/bash-git-prompt.git $HOME/.bash-git-prompt --depth=1
fi