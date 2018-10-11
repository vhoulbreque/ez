platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="git"
PACKAGE_DESCRIPTION="Git is a free and open source distributed version control
system designed to handle everything from small to very large projects with
speed and efficiency. "
PACKAGE_URL="https://git-scm.com/"

if [[ $mode == "install" ]]; then
  echo "Installation of git"
  echo "$PACKAGE_DESCRIPTION"
  echo "$PACKAGE_URL"

  if [[ $platform == "linux-gnu" ]]; then
    sudo add-apt-repository ppa:git-core/ppa -y
    sudo apt-get update
    sudo apt-get install git -y

  elif [[ $platform == "darwin"* ]]; then
    brew install git

  else
    echo "Not implemented"
    exit 1
  fi

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

  echo "Installation of git complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of git"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of git complete"
fi
