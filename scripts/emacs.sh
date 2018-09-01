platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="GNU Emacs"
PACKAGE_URL="https://www.gnu.org/software/emacs/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-add-repository -y ppa:adrozdoff/emacs
    sudo apt update
    sudo apt install emacs25 -y

  elif [[ $platform == "darwin"* ]]; then
    brew install emacs --with-cocoa
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "darwin"* ]]; then
    brew uninstall emacs
  else
    echo "Not implemented"
    exit 1
  fi

  echo "Uninstallation of $PACKAGE complete"
fi
