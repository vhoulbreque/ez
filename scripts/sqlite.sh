platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="sqlite"
PACKAGE_URL="https://www.sqlite.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo add-apt-repository ppa:jonathonf/backports
    sudo apt-get update
    sudo apt-get install sqlite3 -y

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
