# Load all tmuxp sessions
alias tmuxp_load_all='for i in ~/.dotfiles/tmuxp/*.yaml; do tmuxp load -y $i; done'

# Alias tmuxp load
alias tl="tmuxp load -d"
