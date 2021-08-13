/bin/sh
sudo fuser -KILL -k -n tcp 1883
sudo apt-get -y --purge autoremove thingsboard
sudo chmod 777 /tmp/
sudo rm -rf /var/log/thingsboard/
sudo rm -rf /usr/share/thingsboard/
sudo dpkg -i thingsboard.deb
sudo /usr/share/thingsboard/bin/install/install.sh --loadDemo


