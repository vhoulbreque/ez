platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Atom"
PACKAGE_URL="https://atom.io/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    cd ~

    wget https://atom.io/download/deb -O atom-deb
    sudo dpkg -i atom-deb
    rm atom-deb

    # Installation of atom packages
    echo "Installation of atom packages"

    cd $CURRENT
    CONFIG="../config.json"

    atom_packages=$(less $CONFIG | jq -r '.atom_packages[]')
    echo "Going to install these packages :
    $atom_packages"

    for pkg in $atom_packages
    do
      apm install $pkg
    done

  elif [[ $platform == "darwin"* ]]; then
    APPLICATIONS_PATH="/Applications"

    cd ~

    wget -O atom-mac.zip https://atom.io/download/mac
    unzip atom-mac.zip
    rm atom-mac.zip
    mv Atom.app $APPLICATIONS_PATH/
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
