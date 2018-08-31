platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Erlang"
PACKAGE_DESCRIPTION="Erlang Programming Language"
PACKAGE_URL="https://www.erlang.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_DESCRIPTION"
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
    brew install erlang
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not implemented"
    exit 1

  elif [[ $platform == "darwin"* ]]; then
    brew uninstall erlang
  fi

  echo "Uninstallation of $PACKAGE complete"
fi
