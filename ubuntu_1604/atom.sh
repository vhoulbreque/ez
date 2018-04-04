echo "Installation of atom"

cd ~

wget https://atom.io/download/deb -O atom-deb
sudo dpkg -i atom-deb
rm atom-deb

# Installation of atom packages

apm install autocomplete-python
apm install file-icons
apm install python-autopep8
