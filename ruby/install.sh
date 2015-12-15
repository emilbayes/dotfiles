if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   status "Installing rbenv"
   brew install rbenv ruby-build
   source $DIR/.path
   source $DIR/.env
   source $DIR/.bashrc

   status "Installing Ruby 2.1.3"
   rbenv install 2.2.3 --skip-existing
   rbenv rehash
   rbenv global 2.2.3

   status "Installing global gems"
   gem install travis

   rbenv rehash
else
   error "rbenv and gems could not be installed\nsince Homebrew is not installed."
fi



source ruby/.path
source ruby/.env
source ruby/.bashrc
