#!/bin/bash
# https://www.iterm2.com/documentation-shell-integration.html
if [[ "$(uname)" == "Darwin" ]]; then
  curl -L https://iterm2.com/misc/`basename $SHELL`_startup.in -o ~/.iterm2_shell_integration.`basename $SHELL`
fi
