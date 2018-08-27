echo "Installation of NodeJS"

cd ~

sudo apt-get install build-essential -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y

echo "nodejs version : $(nodejs -v)"

echo "Installation of NodeJS complete"
