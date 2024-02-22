let carapace = {|spans|                                                                                    02/22/24 22:10:10 PM
    carapace $spans.0 nushell ...$spans | from json
}
$env.config.completions.external.completer = $carapace