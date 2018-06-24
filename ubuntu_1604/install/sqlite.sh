echo "Installation of sqlite"

cd ~

sudo add-apt-repository ppa:jonathonf/backports
sudo apt-get update
sudo apt-get install sqlite3 -y
