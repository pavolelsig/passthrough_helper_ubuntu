#!/bin/bash

sudo rm run.sh

echo "#!/bin/bash" >> run.sh
VERSION=$(cat /etc/issue | cut -c1-9 )

if [ "$VERSION" = 'Ubuntu 19' ]
then
	echo "apt install qemu virt-manager ovmf qemu-utils libguestfs-tools" >> run.sh
else
	echo "apt install qemu virt-manager ovmf qemu-utils" >> run.sh
fi

$(cat tail.sh >> run.sh )

sudo chmod +x run.sh

sudo ./run.sh

sudo rm run.sh
