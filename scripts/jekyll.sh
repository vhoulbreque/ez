platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Jekyll"

  if [[ $platform == "linux-gnu" ]]; then
    sudo apt-get install ruby ruby-dev build-essential

    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
    echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc

    sudo gem install jekyll bundler

  elif [[ $platform == "darwin"* ]]; then
    echo "Not implemented"
    exit 1
  fi

  echo "Installation of Jekyll complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Jekyll"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Jekyll complete"
fi
