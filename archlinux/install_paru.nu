
# install paru for archlinux
export def main [] {
    if (which paru | is-empty) {
        # install paru from github
        sudo pacman -S --needed base-devel
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si
        rm -rf paru
        echo "paru installed"
    } else {
        echo "paru already installed"
    }
}