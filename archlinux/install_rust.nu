export def main [] {
    use std log info
    if (which rustup | is-empty) {
        info "ERROR cargp and rustup are required to install rust"
        exit 1
    } else {
        info "Rustup is already installed"
    }

    if (which cargo | is-empty) {
        rustup toolchain install stable
    } else {
        info "Cargo is already installed"
    }
    # add ~/.cargo/bin to nushell path
    use ../tools
    tools append_if_not_exists "$env.PATH = ($env.PATH | split row (char esep) | prepend '~/.cargo/bin')" $nu.env-path
  
}