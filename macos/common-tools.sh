echo "Installation of common tools"

# Installation of brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Installation of git
brew install git
