platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of TOR"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    sudo echo

    wget -O tor.tar.xz https://www.torproject.org/dist/torbrowser/7.5.3/tor-browser-linux64-7.5.3_en-US.tar.xz
    tar -xvf tor.tar.xz
    rm tor.tar.xz
    mv tor-browser_en-US/ /opt/

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of TOR complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of TOR"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of TOR complete"
fi
