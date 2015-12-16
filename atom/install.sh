if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   brew cask install atom
else
   error "atom could not be installed\nsince Homebrew is not installed."
fi
