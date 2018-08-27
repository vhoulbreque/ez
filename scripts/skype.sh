platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Skype"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    wget https://go.skype.com/skypeforlinux-64.deb
    sudo dpkg -i skypeforlinux-64.deb
    rm skypeforlinux-64.deb

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Skype complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Skype"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Skype complete"
fi
