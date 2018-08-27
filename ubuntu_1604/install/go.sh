echo "Installation of Golang"

cd ~
sudo echo
wget -O go_install.tar.gz https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go_install.tar.gz
rm go_install.tar.gz

# Adding the folder to the path
cd ~
echo "
# added for golang
export PATH=\"/usr/local/go/bin:\$PATH\"" >> .bashrc

source ~/.bashrc

echo "Installation of Golang complete"
