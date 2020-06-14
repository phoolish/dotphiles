if [[ "$(uname)" == "Darwin" ]]; then
  if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
      source `brew --prefix`/etc/bash_completion.d/vagrant
  fi
fi
