platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Chrome"
PACKAGE_URL="https://www.google.com/chrome/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f
    rm google-chrome-stable_current_amd64.deb

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
