
# setup alias for nushell
export def main [] {

    use ../tools *
    append_if_not_exists "export alias p = paru" $nu.config-path
    append_if_not_exists "export alias pn = paru --needed -S" $nu.config-path
    append_if_not_exists "export alias pss = paru -Ss" $nu.config-path


    append_if_not_exists "use ~/.nu_scripts/aliases/bat/bat-aliases.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/aliases/exa/exa-aliases.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/aliases/eza/eza-aliases.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/aliases/git/git-aliases.nu *" $nu.config-path

}