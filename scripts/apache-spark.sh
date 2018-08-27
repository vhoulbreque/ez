platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

if [[ $mode == "install" ]]; then
  echo "Installation of Apache Spark"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
    cd ~

    brew upgrade && brew update
    brew install scala
    brew install apache-spark
  fi

  echo "Installation of Apache Spark complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of Apache Spark"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of Apache Spark complete"
fi
