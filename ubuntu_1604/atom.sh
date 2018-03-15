echo "Installation of atom"

cd ~

wget https://atom.io/download/deb -O atom-deb
sudo dpkg -i atom-deb
rm atom-deb
