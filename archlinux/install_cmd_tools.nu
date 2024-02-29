# install the common tools
export def main [] {

    # install the paru first
    use install_paru.nu
    install_paru
    use std log info
    

    # install others
    use ../tools
    let tools = [
        fd ripgrep git bat exa zoxide starship bat zoxide 
        skim bottom procs dust tokei hyperfine rustup
        niri-bin gnome-tweaks ttf-jetbrains-mono-nerd otf-font-awesome polkit-gnome
        xdg-desktop-portal-gtk swayidle mako waybar swaybg kde-applications network-manager-applet
        helix fuzzel gnome-keyring swaylock rsync ntp sddm docker
        alacritty visual-studio-code-bin openresolv wireguard-tools eza
        carapace-bin sd just docker-compose zellij tealdeer bandwhich kondo
        cronie mold
    ]
    paru -Syy
    tools install_if_not_exists ...$tools

    # enable multilib in pacman
    if  (rg  '^\[multilib\]' /etc/pacman.conf | is-empty) {
        info "enabling multilib"
        let multilib_string = "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist"
        $multilib_string | sudo tee -a /etc/pacman.conf
    } else {
        info "multilib already enabled"
    }

    use install_rust.nu
    install_rust
}