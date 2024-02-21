FROM archlinux
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm base-devel nushell sudo vim
RUN useradd -m -s /bin/bash nushell
RUN usermod -aG wheel nushell
RUN echo "nushell ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers