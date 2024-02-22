
# config the system
export def main [] {
    # enable ntp
    sudo systemctl enable --now ntpd

    # enable sddm
    sudo systemctl enable sddm
    sudo systemctl enable --now NetworkManager

    # setup niri
    use config_niri.nu
    config_niri

    echo "config down, try to start sddm to see niri configured"
}