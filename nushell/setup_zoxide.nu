
# setup zoxide for nushell
export def init [] {
    # if paru not exists, return error
    if (which paru|is-empty) {
        echo "paru not exists, please install paru first"
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
        echo "zoxide init done"
    } else {
        echo ".zoxide.nu already exists, skip zoxide init"
    }

    # add zoxide to nushell startup: source ~/.zoxide.nu to end of $nu.config
    if  (rg "source ~/.zoxide.nu" $nu.config-path|is-empty) {
        echo "\nsource ~/.zoxide.nu\n" |save --append $nu.config-path
        echo "zoxide added to nushell startup"
    } else {
        echo "source ~/.zoxide.nu already exists, skip adding"
    }
}
