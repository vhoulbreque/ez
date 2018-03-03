echo "#########################################"
echo "# Welcome in the Ubuntu 16.04 installer #"
echo "#########################################"

rm ~/examples.desktop

sudo apt-get update
sudo apt-get upgrade

echo "Installation of common tools"
sudo apt-get install git htop gnome-shell vlc -y

echo "Git info"
git config --global user.email "vincenthoulbreque@gmail.com"
git config --global user.name "vinzeebreak"

echo "Installation of mysql server"
sudo apt-get install mysql-server -y
sudo apt-get install libmysqlclient-dev -y

echo "Installation of anaconda : Anaconda3-5.1.0-Linux-x86_64"
cd ~
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
source ~/.bashrc
conda list
conda update -n base conda
conda create --name lpr34 python=3.4 --yes
conda create --name ironcarenv python=3.6 --yes
conda create --name thalesenv python=3.6 --yes
rm Anaconda3-5.1.0-Linux-x86_64.sh

echo "Installation of spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y
sudo apt-get install spotify-client -y

echo "Installation of atom"
wget https://atom.io/download/deb -O atom-deb
sudo dpkg -i atom-deb
rm atom-deb

echo "Installation of nteract"
sudo apt-get install libappindicator1 libindicator7 libaudit-common libaudit1 -y
wget https://github.com/nteract/nteract/releases/download/v0.7.1/nteract_0.7.1_amd64.deb
sudo dpkg -i nteract_0.7.1_amd64.deb
rm nteract_0.7.1_amd64.deb

echo "Installation of some tools"
sudo apt install ffmpeg

echo "Clone repositories"
cd ~
mkdir Projects
cd Projects
git clone https://github.com/vinzeebreak/ironcar
git clone https://github.com/vinzeebreak/road_simulator
git clone https://github.com/vinzeebreak/lpr.git
mkdir forks
cd forks
git clone https://github.com/Hugoo/ironcar.git hugo
cd ~

echo "clean-up"
sudo apt-get autoremove -y

echo "The installation is over !"
