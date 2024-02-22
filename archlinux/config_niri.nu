
# install the service for niri
export def main [] {
    # create the folders 
    mkdir ~/.config/systemd/user/niri.service.wants/
    # create swaybg.service
    cp ./niri/services/*.service ~/.config/systemd/user/
    # create the links
    ln -sf ~/.config/systemd/user/swaybg.service ~/.config/systemd/user/niri.service.wants/
    ln -sf ~/.config/systemd/user/swayidle.service ~/.config/systemd/user/niri.service.wants/

    # create the links for mako and waybar
    ln -sf /usr/lib/systemd/user/mako.service ~/.config/systemd/user/niri.service.wants/
    ln -sf /usr/lib/systemd/user/waybar.service ~/.config/systemd/user/niri.service.wants/

    # setup the configures,there files are only used by niri
    mkdir ~/.config/alacritty
    cp ./niri/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

    # setup the configures for waybar
    mkdir ~/.config/waybar
    cp ./niri/waybar/config ~/.config/waybar/config

    # setup the niri config
    mkdir ~/.config/niri
    cp ./niri/niri/config.kdl ~/.config/niri/config.kdl

    # cp the bg
    cp ./niri/1.png ~/Pictures/

    echo "the default bg is ~/Pictures/1.png. change it at ~/.config/systemd/user/swaybg.service"

    # setup vscode
    cp ./niri/code-flags.conf ~/.config/

}
