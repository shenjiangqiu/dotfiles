use std log info
# install the commands using paru if not exists
# - note: only works if the package name is same as the command name
export def install_if_not_exists [ 
    ...commands : string # the commands to install
 ] {
    if ( which paru | is-empty ) {
        info $"paru not found, please install paru first"
        use ../archlinux/install_paru.nu
        install_paru
    }

    info $"will install ($commands)"
    paru -S --needed ...$commands
}

# append the content to the file if not exists
export def append_if_not_exists [
    content: string # the content to append
    file: string # the file to append to
] {
    use std assert    
    assert not ($content | str contains "\n") "content must not contain newline"
        

    if ( rg -F -- $content $file | is-empty) {
        info $"content ($content) does not exist in ($file),appending..."
        ("\n" + $content) | save --append $file
        info "saved (prepended with newline)"
    } else {
        use std log info
        info $"content ($content) already exists in ($file)"
    }
}
#[test]
def test [] {
    install_if_not_exists bat fd
}