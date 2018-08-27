platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of MongoDB"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
    sudo apt-get update
    sudo apt-get install -y mongodb-org

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of MongoDB complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of MongoDB"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of MongoDB complete"
fi
