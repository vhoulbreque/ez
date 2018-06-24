echo "Installation of atom"

CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd ~

wget https://atom.io/download/deb -O atom-deb
sudo dpkg -i atom-deb
rm atom-deb

# Installation of atom packages
echo "Installation of atom packages"

cd $CURRENT
CONFIG="../config.json"

atom_packages=$(less $CONFIG | jq -r '.atom_packages[]')
echo "Going to install these packages :
$atom_packages"

for pkg in $atom_packages
do
  apm install $pkg
done
