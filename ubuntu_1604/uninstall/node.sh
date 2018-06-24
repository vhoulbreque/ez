echo "Uninstall Node.js"

cd ~

sudo apt-get purge nodejs
sudo apt-get autoremove

cd ~
rm -rf .npm/

echo "Finished uninstalling Node.js"
