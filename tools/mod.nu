
# install the commands using paru if not exists
# - note: only works if the package name is same as the command name
export def install_if_not_exists [ 
    ...commands : string # the commands to install
 ] {
    if ( which paru | is-empty ) {
        echo $"paru not found, please install paru first"
        use ../archlinux/install_paru.nu
        install_paru
    }

    echo $"will install ($commands)"
    paru -S --needed ...$commands
}
#[test]
def test [] {
    install_if_not_exists bat fd
}