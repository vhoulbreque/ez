platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Anaconda"
PACKAGE_URL="https://www.anaconda.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~
    wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
    bash Anaconda3-5.1.0-Linux-x86_64.sh
    source ~/.bashrc
    conda list
    conda update -n base conda

    rm Anaconda3-5.1.0-Linux-x86_64.sh

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
