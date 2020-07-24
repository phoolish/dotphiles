#!/bin/bash
if ! [ -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
fi

source $HOME/.dotfiles/shell/asdf.sh

asdf update

while IFS= read -r line; do
  plugin=$(echo $line | cut -d' ' -f 1)
  asdf plugin-add $plugin
done < ~/.dotfiles/src/tool-versions

ln -sf ~/.dotfiles/src/tool-versions ~/.tool-versions

asdf plugin update --all
