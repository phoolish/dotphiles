if [[ "$(uname)" == "Darwin" ]]; then
  if [ -f "$(brew --prefix asdf)/asdf.sh" ]; then
    source $(brew --prefix asdf)/asdf.sh
  fi
fi
