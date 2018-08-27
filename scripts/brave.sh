platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Brave"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo echo
    curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | sudo apt-key add -
    echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt `lsb_release -sc` main" | sudo tee -a /etc/apt/sources.list.d/brave-`lsb_release -sc`.list

    sudo apt update
    sudo apt-get install apt-transport-https -y
    sudo apt install brave -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Brave complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Brave"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Brave complete"
fi
