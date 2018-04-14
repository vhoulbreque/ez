echo "Installation of nteract"

cd ~

sudo apt-get install libappindicator1 libindicator7 libaudit-common libaudit1 -y
wget -O nteract_latest.deb https://github.com/nteract/nteract/releases/download/v0.8.4/nteract_0.8.4_amd64.deb
sudo dpkg -i nteract_latest.deb
rm nteract_latest.deb
