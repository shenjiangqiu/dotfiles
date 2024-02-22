use std log debug

# assert that nushell is initialized
export def assert_nushell_init [] {
    use std assert
    assert ($nu.config-path | path exists) "run nu first to init the config"
    assert ($nu.env-path | path exists) "run nu first to init the config"
}

# install the commands using paru if not exists
# - note: only works if the package name is same as the command name
export def install_if_not_exists [ 
    ...commands : string # the commands to install
 ] {
    if ( which paru | is-empty ) {
        debug $"paru not found, please install paru first"
        use ../archlinux/install_paru.nu
        install_paru
    }

    debug $"will install ($commands)"
    paru -S --needed -q ...$commands
}

# append the content to the file if not exists
export def append_if_not_exists [
    content: string # the content to append
    file: string # the file to append to
] {
    use std assert    
    assert not ($content | str contains "\n") "content must not contain newline"
        

    if ( rg -F -- $content $file | is-empty) {
        debug $"content ($content) does not exist in ($file),appending..."
        ("\n" + $content) | save --append $file
        debug "saved (prepended with newline)"
    } else {
        use std log debug
        debug $"content ($content) already exists in ($file)"
    }
}
#[test]
def test [] {
    install_if_not_exists bat fd
}