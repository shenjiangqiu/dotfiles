
# install paru for archlinux
export def main [] {
    use std log info
    if (which paru | is-empty) {
        # install paru from github
        sudo pacman -S --needed base-devel
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si
        rm -rf paru
        info "paru installed"
    } else {
        info "paru already installed"
    }
}