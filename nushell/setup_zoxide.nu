
# setup zoxide for nushell
export def main [] {
    use std log info
    # if paru not exists, return error
    if (which paru|is-empty) {
        info "paru not exists, please install paru first"
        exit 1
    }
    # intall zoxide and setup zoxide
    use ../tools
    tools install_if_not_exists zoxide sd
    if not ("~/.zoxide.nu"|path exists) {
        zoxide init nushell |save -f ~/.zoxide.nu
        # fix the file: change def-env to def --env
        sd -F "def-env" "def --env" ~/.zoxide.nu
        # fix "-- $rest" to "-- ...$rest"
        sd -F -- "-- $rest" "-- ...$rest" ~/.zoxide.nu 
        info "zoxide init done"
    } else {
        info ".zoxide.nu already exists, skip zoxide init"
    }

    # add zoxide to nushell startup: source ~/.zoxide.nu to end of $nu.config
    use ../tools append_if_not_exists
    append_if_not_exists "source ~/.zoxide.nu" $nu.config-path
    
}
