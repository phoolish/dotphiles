#!/bin/bash
if [ -d /keybase ]; then
  symlink_all_files () {
    for file in "$1"*; do
      ln -sf $file $2
    done
  }

  mkdir -p ~/.aws
  symlink_all_files /keybase/private/phoolish/system/aws/ $HOME/.aws/

  symlink_all_files /keybase/private/phoolish/system/dotfiles/shell/secrets/ $HOME/.dotfiles/shell/secrets/

  ln -sf /keybase/private/phoolish/system/dotfiles/sshconfig ~/.ssh/config
else
  echo "Keybase folder is not mounted"
fi
