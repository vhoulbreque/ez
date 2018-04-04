echo "Installation of git"

cd ~

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

git config --global user.email "vincenthoulbreque@gmail.com"
git config --global user.name "vinzeebreak"
