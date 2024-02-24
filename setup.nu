use archlinux
archlinux
use nushell
nushell

use std log warning

warning "setup finished, open $nu.config-path to enable carapace"
warning "open $nu.config-path to disable banner"
warning "currently 10min to lock, 11min to suspend, change it in niri/services/swayidle.service"
warning "change the default behavior of close lid and powerbutton at /etc/systemd/logind.conf"