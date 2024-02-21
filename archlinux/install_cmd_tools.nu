# install the common tools
export def main [] {

    # install the paru first
    use install_paru.nu
    install_paru
    # install others
    use ../tools
    tools install_if_not_exists fd ripgrep bat exa zoxide starship bat zoxide skim bottom procs dust tokei hyperfine rustup
    use install_rust.nu
    install_rust
}