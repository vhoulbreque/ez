echo "Installation of Telegram"

cd ~

cd /opt
sudo wget -O telegram_linux https://telegram.org/dl/desktop/linux
sudo tar xf telegram_linux
sudo rm -rf telegram_linux

echo "Installation of Telegram complete"
