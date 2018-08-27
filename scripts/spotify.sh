platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Spotify"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update -y
    sudo apt-get install spotify-client -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Spotify complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Spotify"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Spotify complete"
fi
