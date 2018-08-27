echo "Installation of Google Chrome for 64 bits"

cd ~

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
rm google-chrome-stable_current_amd64.deb

echo "Installation of Chrome complete"
