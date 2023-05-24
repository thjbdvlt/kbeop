echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf 
sudo modprobe --dry-run hid_apple 
sudo update-initramfs -u 
