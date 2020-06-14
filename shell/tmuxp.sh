if command -v tmuxp >/dev/null 2>&1; then
  eval "$(_TMUXP_COMPLETE=source tmuxp)"
  # Required for OSX Sierra to work
  # https://github.com/tony/tmuxp/issues/173
  export EVENT_NOKQUEUE=1
fi
