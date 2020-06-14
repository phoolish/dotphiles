if [[ "$(uname)" == "Darwin" ]]; then
  if [ -f `brew --prefix`/etc/bash_completion.d/kubectl ]; then
    kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl
  fi
fi
