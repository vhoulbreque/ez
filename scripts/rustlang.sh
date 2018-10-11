platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Rustlang"
PACKAGE_URL="https://www.rust-lang.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" || $platform == "darwin"* ]]; then
    curl https://sh.rustup.rs -sSf | sh
    source $HOME/.cargo/env
  fi

  if [[ $platform == "linux-gnu" ]]; then
    source ~/.profile
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  rustup self uninstall

  echo "Uninstallation of $PACKAGE complete"
fi
