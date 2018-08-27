platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of sqlite"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo add-apt-repository ppa:jonathonf/backports
    sudo apt-get update
    sudo apt-get install sqlite3 -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of sqlite complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of sqlite"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of sqlite complete"
fi
