platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Python"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt-get update
    sudo apt-get install python3.6
    
  elif [[ $platform == "darwin"* ]]; then
    brew install python
  fi

  echo "Installation of Python complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Python"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Python complete"
fi
