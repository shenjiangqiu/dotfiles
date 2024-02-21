
# install paru for archlinux
export def main [] {
    use std log info
    if (which paru | is-empty) {
        # install paru from github
        sudo pacman -S --needed --noconfirm git
        if (not ("paru-bin" | path exists)) {
            git clone https://aur.archlinux.org/paru-bin.git
        }
        cd paru-bin
        makepkg -si
        cd ..
        rm -rf paru-bin
        info "paru installed"
    } else {
        info "paru already installed"
    }
}