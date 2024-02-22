
use ../tools
export def main [] {
    tools assert_nushell_init

    use std log info

    info "starting nushell init"
    use setup_zoxide.nu
    setup_zoxide

    # setup nu_scripts
    paru -S --needed git
    info "install tools from nu_scripts"
    if  (not ("~/.nu_scripts"|path exists)) {
        info "requires nu_scripts to be installed"
        git submodule update --init --recursive
        ln -s $"(realpath (pwd))/nushell/nu_scripts" ~/.nu_scripts
        info $"nu_scripts installed at ~/.nu_scripts"
    } else {
        info "nu_scripts already installed"
    }




    # add the nushell alias
    echo "setting up alias"
    use setup_alias.nu
    setup_alias

    # setup completions
    echo "setting up completions"
    use setup_completion.nu
    setup_completion
}
