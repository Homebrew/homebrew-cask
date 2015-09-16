# Bash completion script for brew-cask(1)

__brew_caskcomp_words_include ()
{
    local i=1
    while [[ $i -lt $COMP_CWORD ]]; do
        if [[ "${COMP_WORDS[i]}" = "$1" ]]; then
            return 0
        fi
        i=$((++i))
    done
    return 1
}

# Find the previous non-switch word
__brew_caskcomp_prev ()
{
    local idx=$((COMP_CWORD - 1))
    local prv="${COMP_WORDS[idx]}"
    while [[ $prv == -* ]]; do
        idx=$((--idx))
        prv="${COMP_WORDS[idx]}"
    done
    echo "$prv"
}

__brew_caskcomp ()
{
    # break $1 on space, tab, and newline characters,
    # and turn it into a newline separated list of words
    local list s sep=$'\n' IFS=$' '$'\t'$'\n'
    local cur="${COMP_WORDS[COMP_CWORD]}"

    for s in $1; do
        __brew_caskcomp_words_include "$s" && continue
        list="$list$s$sep"
    done

    IFS=$sep
    COMPREPLY=($(compgen -W "$list" -- "$cur"))
}

# Don't use __brew_caskcomp() in any of the __brew_cask_complete_foo functions, as
# it is too slow and is not worth it just for duplicate elimination.
__brew_cask_complete_formulae ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local lib=$(brew --repository)/Library
    local taps=${lib}/Taps
    local casks=${lib}/Taps/caskroom/homebrew-cask/Casks
    local ff=$(\ls ${casks} 2>/dev/null | sed 's/\.rb//g')

    COMPREPLY=($(compgen -W "$ff" -- "$cur"))
}

__brew_cask_complete_installed ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local inst=$(brew-cask list -1)
    COMPREPLY=($(compgen -W "$inst" -- "$cur"))
}

__brew_cask_complete_caskroom ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local caskroom_dir=/opt/homebrew-cask/Caskroom/
    local files=$(\ls ${caskroom_dir} 2>/dev/null)
    COMPREPLY=($(compgen -W "$files" -- "$cur"))
}

_brew_cask_cleanup ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    case "$cur" in
    -*)
        __brew_caskcomp "--force"
        return
        ;;
    esac
    __brew_cask_complete_installed
}

_brew_cask_fetch ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local prv=$(__brew_caskcomp_prev)
    case "$cur" in
    -*)
        __brew_caskcomp "--force"
        return
        ;;
    esac
    __brew_cask_complete_formulae
}

_brew_cask_list ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
    -*)
        __brew_caskcomp "-1 -l --versions"
        return
        ;;
    esac

    __brew_cask_complete_installed
}

_brew_cask_uninstall ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    case "$cur" in
    -*)
        __brew_caskcomp "--force"
        return
        ;;
    esac
    __brew_cask_complete_installed
}

_brew_cask_update ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    case "$cur" in
    -*)
        __brew_caskcomp "--rebase --verbose"
        return
        ;;
    esac
}

_brew_cask ()
{
    local i=1 cmd

    # find the subcommand
    while [[ $i -lt $COMP_CWORD ]]; do
        local s="${COMP_WORDS[i]}"
        case "$s" in
        --*)
            cmd="$s"
            break
            ;;
        -*)
            ;;
        *)
            cmd="$s"
            break
            ;;
        esac
        i=$((++i))
    done

    if [[ $i -eq $COMP_CWORD ]]; then
        __brew_caskcomp "alfred audit cat cleanup create doctor edit fetch home info install list search uninstall update zap -S --force --caskroom --verbose --appdir --colorpickerdir --prefpanedir --qlplugindir --fontdir --servicedir --input_methoddir --internet_plugindir --screen_saverdir --no-binaries --binarydir --debug"
        return
    fi

    # subcommands have their own completion functions
    case "$cmd" in
    audit)                      __brew_cask_complete_formulae ;;
    cat|edit|home)              __brew_cask_complete_formulae ;;
    cleanup)                    _brew_cask_cleanup ;;
    fetch)                      _brew_cask_fetch ;;
    info|abv)                   __brew_cask_complete_formulae ;;
    install|instal|reinstall)   __brew_cask_complete_formulae ;;
    list|ls)                    _brew_cask_list ;;
    uninstall|remove|rm)        _brew_cask_uninstall ;;
    update)                     _brew_cask_update ;;
    zap)                        __brew_cask_complete_caskroom ;;
    *)                          ;;
    esac
}

# keep around for compatibility
_brew_cask_to_completion ()
{
    _brew_cask
}

complete -o bashdefault -o default -F _brew_cask brew-cask
