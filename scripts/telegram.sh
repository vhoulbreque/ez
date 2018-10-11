platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Telegram"
PACKAGE_URL="https://telegram.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

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

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
