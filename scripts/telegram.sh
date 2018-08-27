platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Telegram"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    cd /opt
    sudo wget -O telegram_linux https://telegram.org/dl/desktop/linux
    sudo tar xf telegram_linux
    sudo rm -rf telegram_linux

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Telegram complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Telegram"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Telegram complete"
fi
