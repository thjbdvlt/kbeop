# Voir ici pour plus d'informations:
#
# https://unix.stackexchange.com/questions/121395/on-an-apple-keyboard-under-linux-how-do-i-make-the-function-keys-work-without-t
# https://superuser.com/questions/79822/how-to-swap-the-fn-use-of-function-keys-on-an-apple-keyboard-in-linux
# https://wiki.debian.org/InstallingDebianOn/Apple/PageFragmentKeyboard

echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf 
sudo modprobe --dry-run hid_apple 
sudo update-initramfs -u 
