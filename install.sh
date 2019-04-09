#!/bin/bash
################################################################
##
## Zak's MegaRefresh Installer
## Version 0.9 - Recalbox version
##
################################################################

mount -o remount,rw /

mkdir -p /recalbox/scripts/megarefresh/
cd /recalbox/scripts/megarefresh/

wget https://github.com/fzacchi/megarefresh-recalbox/archive/master.zip

unzip -oj master.zip
rm master.zip

chmod +x megarefresh-onstart.sh
chmod +x megarefresh-onend.sh

cp "es_systems.cfg" "/recalbox/share_init/system/.emulationstation/"
cp "recalbox.conf" "ndocazzova"

echo
echo "Zak's MegaRefresh Script v1.0 installed/updated successfully."

sleep 5
