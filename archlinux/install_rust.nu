export def main [] {
    if (which rustup | is-empty) {
        echo "ERROR cargp and rustup are required to install rust"
        exit 1
    } else {
        echo "Rustup is already installed"
    }

    if (which cargo | is-empty) {
        rustup toolchain install stable
    } else {
        echo "Cargo is already installed"
    }
    # add ~/.cargo/bin to nushell path
    if (rg -- "~/.cargo/bin" $nu.env-path | is-empty) {
        echo  "$env.PATH = ($env.PATH | split row (char esep) | prepend '~/.cargo/bin')" | save --append $nu.env-path
        echo "Added ~/.cargo/bin to PATH"
    } else {
        echo "~/.cargo/bin is already in PATH"
    }
}