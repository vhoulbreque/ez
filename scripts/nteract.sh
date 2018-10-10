platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="nteract"
PACKAGE_URL="https://nteract.io/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo apt-get install libappindicator1 libindicator7 libaudit-common libaudit1 -y
    wget -O nteract_latest.deb https://github.com/nteract/nteract/releases/download/v0.8.4/nteract_0.8.4_amd64.deb
    sudo dpkg -i nteract_latest.deb
    rm nteract_latest.deb

  elif [[ $platform == "darwin"* ]]; then
    brew cask install nteract
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then

  if [[ $platform == "darwin"* ]]; then
    brew cask uninstall nteract
  else
    echo "Not implemented"
    exit 1
  fi

  echo "Uninstallation of $PACKAGE complete"
fi
