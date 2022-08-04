__zsh_alias_finder_preexec() {
    # $1 User entered command
    # $2 Alias expanded command
    # $3 Alias & Function expanded command

    ALIAS_PREFIX=${ZSH_ALIAS_FINDER_PREFIX:-"💡 Alias Tip: "}
    ALIAS_SUFFIX=${ZSH_ALIAS_FINDER_SUFFIX:-"%F{green}"}

    # If not using an alias
    if [[ $1 = $2 ]]; then
        # Lookup command in aliases association array
        ALIAS_TIP=${(k)aliases[(r)${1}]}
        if [[ ${ALIAS_TIP} ]]; then
            print -P "$ALIAS_PREFIX$ALIAS_SUFFIX$ALIAS_TIP%f"
        fi
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec __zsh_alias_finder_preexec