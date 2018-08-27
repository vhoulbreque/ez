platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of VSCode"

  if [[ $platform == "linux-gnu" ]]; then
    sudo echo ""  # To ask for the password at the beginning of the script

    cd ~

    wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
    sudo dpkg -i vscode.deb
    sudo apt-get install -f

    rm vscode.deb

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of VSCode complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of VSCode"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of VSCode complete"
fi
