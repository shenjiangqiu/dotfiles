
# config the system
export def main [] {
    # enable ntp
    sudo systemctl enable --now ntpd
    # enable sddm
    # sudo systemctl enable sddm
    sudo systemctl enable --now NetworkManager
    sudo systemctl enable --now cronie
    # setup niri
    use config_niri.nu
    config_niri

    # setup zellij
    use std log info
    info "setting up zellij"
    mkdir ~/.config/zellij
    cp ./niri/zellij/config.kdl ~/.config/zellij/config.kdl

    # setup fonts and locale
    echo "setting up chinese fonts"
    sudo sd -F -- "#zh_CN.UTF-8 UTF-8" "zh_CN.UTF-8 UTF-8" /etc/locale.gen
    let chinese_fonts = [
        adobe-source-han-sans-cn-fonts
        adobe-source-han-serif-cn-fonts
        noto-fonts-cjk
        wqy-microhei
        wqy-microhei-lite
        wqy-bitmapfont
        wqy-zenhei
        ttf-arphic-ukai
        ttf-arphic-uming
    ]
    paru -S -q --needed ...$chinese_fonts



    echo "config down, try to start sddm to see niri configured"


}