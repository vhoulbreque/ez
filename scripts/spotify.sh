platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Spotify"
PACKAGE_URL="https://www.spotify.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update -y
    sudo apt-get install spotify-client -y

  elif [[ $platform == "darwin"* ]]; then
    brew cask install spotify
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
      brew cask uninstall spotify
  fi
  echo "Uninstallation of $PACKAGE complete"
fi
