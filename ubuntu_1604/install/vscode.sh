echo "Installation of vscode"
sudo echo ""  # To ask for the password at the beginning of the script

cd ~

wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb
sudo apt-get install -f

rm vscode.deb
