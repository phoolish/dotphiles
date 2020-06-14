# Get tmuxp names configs from ~/.tmuxp folder
_tmuxpFileNameComplete()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(basename -s .yaml -- ~/.tmuxp/*)" -- $cur) )
}

complete -F _tmuxpFileNameComplete tl
