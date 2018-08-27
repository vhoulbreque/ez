platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Golang"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~
    sudo echo
    wget -O go_install.tar.gz https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go_install.tar.gz
    rm go_install.tar.gz

    # Adding the folder to the path
    cd ~
    echo "
    # added for golang
    export PATH=\"/usr/local/go/bin:\$PATH\"" >> .bashrc

    source ~/.bashrc

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Golang complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Golang"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Golang complete"
fi
