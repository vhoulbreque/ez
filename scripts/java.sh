platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Java"

  if [[ $platform == "linux-gnu" ]]; then
    sudo echo

    sudo add-apt-repository ppa:webupd8team/java -y
    sudo apt-get update
    sudo apt-get install oracle-java8-installer -y

  elif [[ $platform == "darwin"* ]]; then
    cd ~

    brew cask install java
  else
    echo "Not currently implemented"
    exit 1
  fi

  echo "Installation of Java complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Java"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Java complete"
fi
