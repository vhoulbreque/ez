platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Rustlang"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1

  elif [[ $platform == "darwin"* ]]; then
    curl https://sh.rustup.rs -sSf | sh
    source $HOME/.cargo/env
  fi

  echo "Installation of Rustlang complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Rustlang"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Rustlang complete"
fi
