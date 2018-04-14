echo "Installation of common tools"

cd ~

sudo apt-get install htop gnome-shell vlc ffmpeg gcc unzip sshfs -y
sudo apt-get install python-dev -y
sudo apt-get install python3-dev -y
sudo apt-get install libevent-dev -y
sudo apt-get update
sudo apt-get install --reinstall build-essential

# Installation of jq for json parsing
sudo apt-get install jq -y  # https://github.com/stedolan/jq
