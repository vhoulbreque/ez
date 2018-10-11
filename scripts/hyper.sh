platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Hyper"
PACKAGE_URL="https://hyper.is/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~
    wget -O hyper.deb https://releases.hyper.is/download/deb
    sudo dpkg -i hyper.deb
    rm hyper.deb

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
