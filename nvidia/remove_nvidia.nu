# this will remove nvidia
paru -Rsc nvidia nvidia-utils vulkan-icd-loader lib32-vulkan-icd-loader lib32-nvidia-utils
# remove the mod settings
sudo rm /etc/modprobe.d/nvidia.conf