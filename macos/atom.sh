echo "Installation of atom"

APPLICATIONS_PATH="/Applications"

cd ~

wget -O atom-mac.zip https://atom.io/download/mac
unzip atom-mac.zip
rm atom-mac.zip
mv Atom.app $APPLICATIONS_PATH/
