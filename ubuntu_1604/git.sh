echo "Installation of git"

cd ~

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

git config --global user.email "vincenthoulbreque@gmail.com"
git config --global user.name "vinzeebreak"

echo "Clone repositories"

mkdir Projects
cd Projects
git clone https://github.com/vinzeebreak/ironcar
git clone https://github.com/vinzeebreak/road_simulator
git clone https://github.com/vinzeebreak/lpr.git
mkdir forks
cd forks
git clone https://github.com/Hugoo/ironcar.git hugo
