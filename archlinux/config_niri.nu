
# install the service for niri
export def main [] {
    # create the folders 
    echo "cp the services"
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
    echo "setting up alacritty"
    mkdir ~/.config/alacritty
    cp ./niri/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

    # setup the configures for waybar
    echo "setting up waybar"
    mkdir ~/.config/waybar
    cp ./niri/waybar/config ~/.config/waybar/config

    # setup the niri config
    echo "setting up niri"
    mkdir ~/.config/niri
    cp ./niri/niri/config.kdl ~/.config/niri/config.kdl


    # cp the bg
    echo "cp 1.png as wallpaper"
    cp ./niri/1.png ~/Pictures/

    # setup swaylock
    echo "cp swaylock config"
    mkdir ~/.config/swaylock
    cp ./niri/swaylock/config ~/.config/swaylock/config

    echo "the default bg is ~/Pictures/1.png. change it at ~/.config/systemd/user/swaybg.service"

    # setup vscode
    echo "cp code flags for vscode wayland launch"
    cp ./niri/code-flags.conf ~/.config/code-flags.conf
    cp ./niri/code-flags.conf ~/.config/electron28-flags.conf

    let vscode_config_path = "~/.config/Code/User/settings.json"
    let config = {
        "window.titleBarStyle": "custom",
        "git.autofetch": true,
        "git.confirmSync": false,
        "terminal.integrated.fontFamily": "'JetBrainsMono Nerd Font','Droid Sans Mono', 'monospace', monospace",
        "editor.fontFamily": "'JetBrainsMono Nerd Font','Droid Sans Mono', 'monospace', monospace",
        "editor.fontLigatures": true,
        "files.autoSave": "afterDelay",

    }
    # update vscode config to use correct fonts
    if ($vscode_config_path | path exists) and ( open $vscode_config_path | describe | $in =~ record ) {
        echo "vscode config exists, update the settings"
        mut vscode = open $vscode_config_path
        for item in ($config | transpose key value) {
            echo $"updating key: ($item.key) : ($item.value)"
            $vscode = ($vscode | upsert $item.key $item.value)
        }
        $vscode | to json | save -f $vscode_config_path
    } else {
        # the file not exists
        touch $vscode_config_path
        $config | to json |save -f $vscode_config_path
    }

 

}
