source "$HOME/.dotfiles/shell/functions/ps1_aws.sh"
source "$HOME/.fresh/build/vendor/kube-ps1.sh"

export KUBE_PS1_NS_ENABLE=true
export KUBE_PS1_PREFIX=" ("
export KUBE_PS1_DIVIDER="/"
export KUBE_PS1_SYMBOL_ENABLE=false
export KUBE_PS1_SYMBOL_USE_IMG=true

function prompt_callback {
  echo -n "$(ps1_aws)$(kube_ps1)"
}

GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Solarized
source "$HOME/.bash-git-prompt/gitprompt.sh"
