platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Boost"
PACKAGE_URL="https://www.boost.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
    sudo echo ""

    cd ~/Downloads
    wget https://dl.bintray.com/boostorg/release/1.63.0/source/boost_1_63_0.zip
    unzip boost_1_63_0.zip
    sudo mv boost_1_63_0 /usr/local/bin

    rm boost_1_63_0.zip
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
