platform=$1  # linux-gnu, darwin*
mode=$2  # install, uninstall

PACKAGE="Apache Spark"
PACKAGE_URL="https://spark.apache.org/"

if [[ $mode == "install" ]]; then
  echo "Installation of $PACKAGE"
  echo "$PACKAGE_DESCRIPTION"

  if [[ $platform == "linux-gnu" ]]; then
    echo "Not currently implemented"
    exit 1
  elif [[ $platform == "darwin"* ]]; then
    cd ~

    brew upgrade && brew update
    brew install scala
    brew install apache-spark
  fi

  echo "Installation of $PACKAGE complete"

elif [[ $mode == "uninstall" ]]; then
  echo "Uninstallation of $PACKAGE"
  echo "Not implemented"
  exit 1
  echo "Uninstallation of $PACKAGE complete"
fi
