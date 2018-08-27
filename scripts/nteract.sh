platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of nteract"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo apt-get install libappindicator1 libindicator7 libaudit-common libaudit1 -y
    wget -O nteract_latest.deb https://github.com/nteract/nteract/releases/download/v0.8.4/nteract_0.8.4_amd64.deb
    sudo dpkg -i nteract_latest.deb
    rm nteract_latest.deb

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of nteract complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of nteract"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of nteract complete"
fi
