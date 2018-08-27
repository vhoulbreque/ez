platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of net-data"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~
    bash <(curl -Ss https://my-netdata.io/kickstart.sh)

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of net-data complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of net-data"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of net-data complete"
fi
