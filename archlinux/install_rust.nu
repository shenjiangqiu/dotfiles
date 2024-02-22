export def main [] {
    use std log info
    tools install_if_not_exists rustup
    rustup toolchain add stable
    # add ~/.cargo/bin to nushell path
    use ../tools
    tools append_if_not_exists "$env.PATH = ($env.PATH | split row (char esep) | prepend '~/.cargo/bin')" $nu.env-path
}