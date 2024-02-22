export def main [] {
    use ../tools *
    # first setup the carapace 
    # cp ./nushell/setup_carapace.nu ~/.setup_carapace.nu
    # append_if_not_exists "source ~/.setup_carapace.nu" $nu.config-path
    
 
    append_if_not_exists "use ~/.nu_scripts/custom-completions/bitwarden-cli/bitwarden-cli-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/btm/btm-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/cargo/cargo-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/gh/gh-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/git/git-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/glow/glow-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/just/just-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/make/make-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/man/man-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/mask/mask-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/nano/nano-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/nix/nix-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/npm/npm-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pass/extensions/pass-otp/pass-otp-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pass/extensions/pass-update/pass-update-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pass/nu-complete/mod.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pass/pass-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pdm/pdm-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pixi/pixi-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/pnpm/pnpm-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/poetry/poetry-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/reflector/reflector-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/rustup/rustup-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/scoop/scoop-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/tealdeer/tldr-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/toipe/toipe-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/typst/typst-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/vscode/vscode-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/winget/winget-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/yarn/yarn-v4-completions.nu *" $nu.config-path
    append_if_not_exists "use ~/.nu_scripts/custom-completions/zellij/zellij-completions.nu *" $nu.config-path

}