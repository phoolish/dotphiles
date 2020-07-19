#!/bin/bash
if [ -d "$HOME/.asdf" ]; then
  asdf update
else
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
fi

ln -sf ~/.dotfiles/src/tool-versions ~/.tool-versions

source $HOME/.asdf/asdf.sh

while IFS=read -r line; do
  local linearray=$(line)
  local plugin=${linearray[0]}
  asdf plugin-add $plugin
done < ~/.tool-versions

asdf plugin update --all