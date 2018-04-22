echo "Installation of TOR"

cd ~

sudo echo

wget -O tor.tar.xz https://www.torproject.org/dist/torbrowser/7.5.3/tor-browser-linux64-7.5.3_en-US.tar.xz
tar -xvf tor.tar.xz
rm tor.tar.xz
mv tor-browser_en-US/ /opt/
