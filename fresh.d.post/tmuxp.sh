if command -v tmuxp >/dev/null 2>&1; then
  rm -f ~/.tmuxp
  ln -s ~/.dotfiles/tmuxp ~/.tmuxp
fi
