#!/bin/bash
################################################################
##
## Zak's MegaRefresh Installer
## Version 0.9 - Recalbox version
##
################################################################

mount -o remount,rw /
mount -o remount,rw /boot

mkdir -p /recalbox/scripts/megarefresh/
cd /recalbox/scripts/megarefresh/

wget https://github.com/fzacchi/megarefresh-recalbox/archive/master.zip

unzip -oj master.zip
rm master.zip

chmod +x megarefresh-onstart.sh
chmod +x megarefresh-onend.sh

cp "es_systems.cfg" "/recalbox/share_init/system/.emulationstation/"
sed -i 's/global.videomode=CEA 4 HDMI/global.videomode=default/g' /recalbox/share/system/recalbox.conf
sed -i 's/global.videomode=CEA 4 HDMI/global.videomode=default/g' /boot/recalbox-backup.conf

echo
echo "Zak's MegaRefresh Script v1.0 installed/updated successfully."

sleep 5
