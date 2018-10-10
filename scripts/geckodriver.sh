platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="geckodriver"
PACKAGE_DESCRIPTION="Proxy for using W3C WebDriver compatible clients to
interact with Gecko-based browsers."

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_DESCRIPTION"

  if [[ $platform == "linux-gnu" ]]; then
    sudo echo

    cd ~/Downloads

    wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz
    tar -xvzf geckodriver*
    chmod +x geckodriver
    sudo mv geckodriver /usr/local/bin/

  elif [[ $platform == "darwin"* ]]; then
    brew install geckodriver
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not implemented"
    exit 1

  elif [[ $platform == "darwin"* ]]; then
    brew uninstall geckodriver
  fi

  echo "Uninstallation of $PACKAGE complete"
fi
