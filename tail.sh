
nano /etc/default/grub

update-grub

echo "vfio" >> /etc/modules
echo "vfio_iommu_type1" >> /etc/modules
echo "vfio_pci" >> /etc/modules
echo "kvm" >> /etc/modules
echo "kvm_intel" >> /etc/modules

cp vfio-pci-override-vga.sh /sbin/vfio-pci-override-vga.sh

chmod 755 /sbin/vfio-pci-override-vga.sh

echo "install vfio-pci /sbin/vfio-pci-override-vga.sh" >> /etc/modprobe.d/local.conf

echo 'install_items+="/sbin/vfio-pci-override-vga.sh /usr/bin/find /usr/bin/dirname"' >> /etc/initramfs-tools/modules

update-initramfs -u

