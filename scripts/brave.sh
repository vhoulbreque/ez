platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Brave"
PACKAGE_URL="https://brave.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

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

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
