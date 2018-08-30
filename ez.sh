#!/bin/bash

VERSION="0.0.0"
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
requirements=false

while (( "$#" )); do
  case "$1" in
    -i|--install)
      mode="install"
      package_name=$2
      shift 2
      ;;
    -h|--help)
      mode="help"
      shift
      ;;
    -V|--version)
      mode="version"
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
      if [[ "$1" = "uninstall" ]]; then
        mode="uninstall"
      elif [[ "$1" = "install" ]]; then
        mode="install"
      fi

      if [[ $2 = "-r" ]]; then
        requirements=true
        requirements_file=$3
        shift 3
      else
        package_name=$2
        shift 2
      fi
      ;;
  esac
done

usage() {
    cat 1>&2 <<EOF
ez - $VERSION
The ez installer

USAGE:
    ez [FLAGS]

FLAGS:
    -h, --help              Prints help information
    -V, --version           Prints version information
EOF
}

version() {
  echo "ez - $VERSION"
}

if [[ $mode = "help" ]]; then
  usage
elif [[ $mode = "version" ]]; then
  version
elif [[ $mode = "install" ]] || [[ $mode = "uninstall" ]]; then

  if [[ $requirements = true ]]; then
    # Installing from a "requirements" file
    # packages should be separated by a newline "\n"
    if [ ! -f $requirements_file ]; then
      echo "The requirements_file $requirements_file does not exist"
      exit 1
    fi
    IFS=$'\r\n' GLOBIGNORE='*' command eval 'packages=($(cat $requirements_file))'

  else
    packages=($package_name)
  fi

  # Install or uninstall all the packages one ny one
  for package_name in "${packages[@]}"
  do
    SCRIPT="./scripts/$package_name.sh"
    if [ ! -f $SCRIPT ]; then
      echo "The package $package_name does not exist"
    else
      ./scripts/$package_name.sh $platform $mode
    fi
  done

fi
