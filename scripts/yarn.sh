platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Yarn"

  if [[ $platform == "linux-gnu" ]]; then
    sudo echo ""

    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

    sudo apt-get update && sudo apt-get install yarn

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Yarn complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Yarn"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Yarn complete"
fi
