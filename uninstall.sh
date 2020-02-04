sudo rm vfio-pci-override-vga.sh /sbin/vfio-pci-override-vga.sh

sudo cp Backup/etc_modules /etc/modules
sudo cp Backup/grub /etc/default/grub
sudo cp Backup/modules /etc/initramfs-tools/modules
sudo cp Backup/modules/local.conf /etc/modprobe.d/local.conf


sudo update-grub
sudo update-initramfs -u

