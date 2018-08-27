#!/bin/bash

platform="$OSTYPE"

if [[ $platform != "linux-gnu" ]] && [[ $platform != "darwin"* ]]; then
  echo "Unsupported version: $platform";
  echo "Currently, only Linux Ubuntu 16.04 and MacOs are supported.
File an issue on https://github.com/vinzeebreak/my-installations to support your machine !"
  exit 1
fi

# Retrieve the different arguments
# See https://medium.com/@Drew_Stokes/bash-argument-parsing-54f3b81a6a8f
# for more info
mode=""
package_name=""

while (( "$#" )); do
  case "$1" in
    -i|--install)
      FARG=$2
      mode="install"
      package_name=$FARG
      shift 2
      ;;
    -h|--help)
      mode="help"
      shift
      ;;
    --) # end argument parsing
      shift
      break
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments
      if [[ "$1" == "uninstall" ]]; then
        mode="uninstall"
        FARG=$2
        package_name=$FARG
        shift 2
      elif [[ "$1" == "install" ]]; then
        mode="install"
        FARG=$2
        package_name=$FARG
        shift 2
      fi
      ;;
  esac
done


if [[ $mode == "help" ]]; then
  echo "This is the help"
  exit 1
fi

./scripts/$package_name.sh $platform $mode
