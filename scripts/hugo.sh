platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Hugo"

  if [[ $platform == "linux-gnu" ]]; then
    snap install hugo --channel=extended
    source ~/.bashrc

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Hugo complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Hugo"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Hugo complete"
fi
