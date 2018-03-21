echo "#########################################"
echo "# Welcome in the Ubuntu 16.04 installer #"
echo "#########################################"

# When installing ubuntu, this file is present
rm ~/examples.desktop

sudo apt-get update
sudo apt-get upgrade

# Common tools
chmod +x ubuntu_1604/common-tools.sh
./ubuntu_1604/common-tools.sh

# Git
chmod +x ubuntu_1604/git.sh
./ubuntu_1604/git.sh

# Mysql-server
chmod +x ubuntu_1604/mysql-server.sh
./ubuntu_1604/mysql-server.sh

# Anaconda
chmod +x ubuntu_1604/anaconda.sh
./ubuntu_1604/anaconda.sh

# Spotify
chmod +x ubuntu_1604/spotify.sh
./ubuntu_1604/spotify.sh

# Atom
chmod +x ubuntu_1604/atom.sh
./ubuntu_1604/atom.sh

# Nteract
chmod +x ubuntu_1604/nteract.sh
./ubuntu_1604/nteract.sh

# Skype
chmod +x ubuntu_1604/skype.sh
./ubuntu_1604/skype.sh

# fastText
chmod +x ubuntu_1604/fasttext.sh
./ubuntu_1604/fasttext.sh

echo "clean-up"
sudo apt-get autoremove -y

echo "The installation is over !"
