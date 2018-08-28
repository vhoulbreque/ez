platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Sonic Pi"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then

    OS_RELEASE=$( cat /etc/os-release )
    if [[ $OS_RELEASE = *"raspbian"* ]]; then
      # I'm on a Raspberry Pi
      sudo apt-get update
      sudo apt-get install sonic-pi
    else
      echo "Not currently implemented"
      exit 1
    fi

  elif [[ $platform == "darwin"* ]]; then
    echo "Not currently implemented"
    exit 1
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
