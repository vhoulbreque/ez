platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Slack"

  if [[ $platform == "linux-gnu" ]]; then
    sudo snap install slack --classic

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Slack complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Slack"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Slack complete"
fi
