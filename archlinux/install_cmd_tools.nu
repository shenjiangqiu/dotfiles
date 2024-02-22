# install the common tools
export def main [] {

    # install the paru first
    use install_paru.nu
    install_paru
    # install others
    use ../tools
    tools install_if_not_exists fd ripgrep git bat exa zoxide starship bat zoxide skim bottom procs dust tokei hyperfine rustup
    tools install_if_not_exists niri-bin gnome-tweaks ttf-jetbrains-mono-nerd otf-font-awesome polkit-gnome xdg-desktop-portal-gtk swayidle mako waybar swaybg kde-applications network-manager-applet
    tools install_if_not_exists helix fuzzel gnome-keyring swaylock rsync ntp sddm docker


    use install_rust.nu
    install_rust
}