echo "Installation of fasttext"

cd ~

cd /opt
sudo wget https://github.com/facebookresearch/fastText/archive/v0.1.0.zip
sudo unzip v0.1.0.zip
sudo rm v0.1.0.zip
cd fastText-0.1.0
sudo make

# Adding the folder to the path
cd ~
echo "
# added for fasttext
export PATH=\"/opt/fastText-0.1.0:\$PATH\"" >> .bashrc

source ~/.bashrc
