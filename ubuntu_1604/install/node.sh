echo "Installation of node"

cd ~

sudo apt-get install build-essential -y
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install nodejs -y

echo "nodejs version : $(nodejs -v)"
