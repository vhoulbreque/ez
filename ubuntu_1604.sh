echo "#########################################"
echo "# Welcome in the Ubuntu 16.04 installer #"
echo "#########################################"

# When installing ubuntu, this file is present
rm ~/examples.desktop

sudo apt-get update
sudo apt-get upgrade

# Common tools
./ubuntu_1604/common-tools.sh

# Git
./ubuntu_1604/git.sh

# Mysql-server
./ubuntu_1604/mysql-server.sh

# MongoDB
./ubuntu_1604/mongodb.sh

# Anaconda
./ubuntu_1604/anaconda.sh

# Spotify
./ubuntu_1604/spotify.sh

# Atom
./ubuntu_1604/atom.sh

# Nteract
./ubuntu_1604/nteract.sh

# Skype
./ubuntu_1604/skype.sh

# fastText
./ubuntu_1604/fasttext.sh

echo "clean-up"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

echo "The installation is over !"
