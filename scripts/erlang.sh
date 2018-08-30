platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Erlang"
PACKAGE_URL="https://www.erlang.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    sudo echo ""

    cd ~

    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
    sudo dpkg -i erlang-solutions_1.0_all.deb
    sudo apt-get update
    sudo apt-get install erlang -y

    rm -rf erlang-solutions_1.0_all.deb

  elif [[ $platform == "darwin"* ]]; then
    echo "Not currently implemented"
    exit 1
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
