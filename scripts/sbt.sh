platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of sbt"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
    cd ~

    brew install sbt
  fi

  echo "Installation of sbt complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of sbt"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of sbt complete"
fi
