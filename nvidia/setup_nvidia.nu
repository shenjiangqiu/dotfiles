# first install the required packages
use std log info
info "Installing the required packages"
paru -S --needed nvidia nvidia-utils vulkan-icd-loader lib32-vulkan-icd-loader lib32-nvidia-utils
# set the modeset=1 

info "Setting the modeset=1"
sudo cp ./nvidia/nvidia.conf /etc/modprobe.d/nvidia.conf

