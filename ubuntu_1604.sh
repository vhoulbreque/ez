echo "#########################################"
echo "# Welcome in the Ubuntu 16.04 installer #"
echo "#########################################"

# When installing ubuntu, this file is present
rm ~/examples.desktop

sudo apt-get update
sudo apt-get dist-upgrade -y

DIR_SCRIPTS="./ubuntu_1604/install"

# Common tools
$DIR_SCRIPTS/common-tools.sh

# Git
$DIR_SCRIPTS/git.sh

# Mysql-server
$DIR_SCRIPTS/mysql-server.sh

# MongoDB
$DIR_SCRIPTS/mongodb.sh

# Anaconda
$DIR_SCRIPTS/anaconda.sh

# Spotify
$DIR_SCRIPTS/spotify.sh

# Atom
$DIR_SCRIPTS/atom.sh

# Nteract
$DIR_SCRIPTS/nteract.sh

# Skype
$DIR_SCRIPTS/skype.sh

# fastText
$DIR_SCRIPTS/fasttext.sh

echo "clean-up"
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

echo "The installation is over !"
