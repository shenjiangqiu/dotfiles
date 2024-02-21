
# install all the tools for archlinux
export def main [] {
    use ../tools

    tools assert_nushell_init
    use install_cmd_tools.nu
    install_cmd_tools
}