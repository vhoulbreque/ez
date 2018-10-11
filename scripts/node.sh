platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="NodeJS"
PACKAGE_URL="https://nodejs.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo apt-get install build-essential -y
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    sudo apt-get install nodejs -y

  elif [[ $platform == "darwin"* ]]; then
    brew install node
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo apt-get purge nodejs
    sudo apt-get autoremove

    cd ~
    rm -rf .npm/

  elif [[ $platform == "darwin"* ]]; then
    brew uninstall node
  fi

  echo "Uninstallation of $PACKAGE complete"

fi
