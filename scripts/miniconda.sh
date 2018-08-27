platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Miniconda"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh
    rm Miniconda3-latest-Linux-x86_64.sh

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Miniconda complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Miniconda"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Miniconda complete"
fi
