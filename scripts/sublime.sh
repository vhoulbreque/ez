platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Sublime"
PACKAGE_URL="https://www.sublimetext.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    cd ~

    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-get install apt-transport-https -y
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-get remove sublime-text -y && sudo apt-get autoremove -y

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Uninstallation of $PACKAGE complete"
fi
