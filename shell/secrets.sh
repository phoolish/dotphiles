for secret in ls $HOME/.dotfiles/shell/secrets/*.sh; do
  if [ -f $secret ]; then
    source $secret
  fi
done
