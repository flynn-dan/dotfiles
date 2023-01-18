zsh_prompt_home_indicator() {
    if [[ "$PWD" = "$HOME" ]]; then
        echo "home"
    else
        echo "not home"
   fi
}

# $(zsh_prompt_home_indicator)

alias python='/usr/local/bin/python3.10'

# arrow=\U2192

PS1=$'%2~ %(!.#.>) '
export PS1


