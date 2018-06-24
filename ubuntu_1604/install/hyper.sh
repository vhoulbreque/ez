echo "Installation of hyper terminal"

cd ~
wget -O hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i hyper.deb
rm hyper.deb
