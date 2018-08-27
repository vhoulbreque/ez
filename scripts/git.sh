platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of git"

  if [[ $platform == "linux-gnu" ]]; then
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt-get update
    sudo apt-get install git -y

    CONFIG="../config.json"

    git_email=$(less $CONFIG | jq -r '.git_email')

    if [ "$git_email" != "null" ]
    then
      echo "git.email = $git_email"
      git config --global user.email $git_email
    else
      echo "No git_email was given in config.json"
    fi

    git_name=$(less $CONFIG | jq -r '.git_name')

    if [ "$git_name" != "null" ]
    then
      echo "git.name = $git_name"
      git config --global user.name $git_name
    else
      echo "No git_name was given in config.json"
    fi

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of git complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of git"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of git complete"
fi
