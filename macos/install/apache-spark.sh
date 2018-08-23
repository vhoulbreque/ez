echo "Installing Apache Spark"

cd ~

brew upgrade && brew update
brew install scala
brew install apache-spark

echo "Successfully installed Scala and Apache-spark"
