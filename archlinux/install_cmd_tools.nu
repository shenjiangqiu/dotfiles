# install the common tools
export def main [] {

    # install the paru first
    use install_paru.nu
    install_paru
    # install others
    use ../tools
    let tools = [
        fd ripgrep git bat exa zoxide starship bat zoxide 
        skim bottom procs dust tokei hyperfine rustup
        niri-bin gnome-tweaks ttf-jetbrains-mono-nerd otf-font-awesome polkit-gnome
        xdg-desktop-portal-gtk swayidle mako waybar swaybg kde-applications network-manager-applet
        helix fuzzel gnome-keyring swaylock rsync ntp sddm docker
        alacritty visual-studio-code-bin openresolv wireguard-tools eza
        carapace-bin
    ]
    tools install_if_not_exists ...$tools

    use install_rust.nu
    install_rust
}