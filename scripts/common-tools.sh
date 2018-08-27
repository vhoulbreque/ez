platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of common tools"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Installation of common tools"

    cd ~

    sudo apt-get install htop gnome-shell vlc ffmpeg gcc unzip sshfs nmap -y
    sudo apt-get install python-dev -y
    sudo apt-get install python3-dev -y
    sudo apt-get install libevent-dev -y
    sudo apt-get update
    sudo apt-get install --reinstall build-essential

    # Installation of jq for json parsing
    sudo apt-get install jq -y  # https://github.com/stedolan/jq


  elif [[ $platform == "darwin"* ]]; then
    # Installation of brew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor

    brew install git
    brew install wget
  fi

  echo "Installation of common tools complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of common tools"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of common tools complete"
fi
