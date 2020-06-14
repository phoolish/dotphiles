_aws_cred() {

    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$( \
        grep '\[profile' ~/.aws/config \
        | awk '{sub(/]/, "", $2); print $2}' \
        | while read -r profile; do echo -n "$profile "; done \
        )" -- $cur) )
}

complete -F _aws_cred aws_cred
