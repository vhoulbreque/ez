platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Java"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
    cd ~

    brew cask install java
  fi

  echo "Installation of Java complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Java"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Java complete"
fi
