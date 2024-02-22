
use ../tools
export def main [] {
    tools assert_nushell_init

    use std log info

    info "starting nushell init"
    use setup_nushell.nu
    setup_nushell
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
    tools append_if_not_exists "source ~/.nu_scripts/custom-completions/git/git-completions.nu" $nu.config-path
}
