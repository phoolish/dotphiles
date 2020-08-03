#!/bin/bash
#

if [ -d "$HOME/.fresh/build/vendor/linux-magic-trackpad-2-driver" ]; then
  cd $HOME/.fresh/build/vendor/linux-magic-trackpad-2-driver
  chmod u+x install.sh
fi
