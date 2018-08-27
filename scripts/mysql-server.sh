platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of mysql-server"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-get install mysql-server -y
    sudo apt-get install libmysqlclient-dev -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of mysql-server complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of mysql-server"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of mysql-server complete"
fi
