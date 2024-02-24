# this will remove nvidia
paru -Rsc nvidia nvidia-utils
paru -S --needed mesa
# remove the mod settings
sudo rm /etc/modprobe.d/nvidia.conf