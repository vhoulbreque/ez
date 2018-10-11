platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Java"
PACKAGE_URL="https://www.java.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

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

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
