platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="mysql-server"
PACKAGE_URL="https://www.mysql.com"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-get install mysql-server -y
    sudo apt-get install libmysqlclient-dev -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of mysql-server"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
