platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="net-data"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~
    bash <(curl -Ss https://my-netdata.io/kickstart.sh)

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
