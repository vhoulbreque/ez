echo "Installation of nteract"

cd ~

sudo apt-get install libappindicator1 libindicator7 libaudit-common libaudit1 -y
wget https://github.com/nteract/nteract/releases/download/v0.7.1/nteract_0.7.1_amd64.deb
sudo dpkg -i nteract_0.7.1_amd64.deb
rm nteract_0.7.1_amd64.deb
