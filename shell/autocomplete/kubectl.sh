if [[ "$(uname)" == "Darwin" ]]; then
  if [ -f `brew --prefix`/etc/bash_completion.d/kubectl ]; then
    kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl
  fi
else
  if [[  -f "$HOME/.asdf/shims/kubectl" ]]; then
    source <($HOME/.asdf/shims/kubectl completion bash)
  fi
fi
