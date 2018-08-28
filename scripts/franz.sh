platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Franz"

  if [[ $platform == "linux-gnu" ]]; then
    cd ~

    wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.16/franz-5.0.0-beta.16-x86_64.AppImage
    chmod a+x franz-5.0.0-beta.16-x86_64.AppImage
    ./franz-5.0.0-beta.16-x86_64.AppImage $pkg

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Franz complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Franz"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Franz complete"
fi
