platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Rustlang"

  if [[ $platform == "linux-gnu" || $platform == "darwin"* ]]; then
    curl https://sh.rustup.rs -sSf | sh
    source $HOME/.cargo/env
  fi

  if [[ $platform == "linux-gnu" ]]; then
    source ~/.profile
  fi

  echo "Installation of Rustlang complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Rustlang"

  rustup self uninstall

  echo "Uninstallation of Rustlang complete"
fi
