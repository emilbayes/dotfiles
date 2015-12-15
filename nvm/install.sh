if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   brew install nvm
   source $DIR/.env
   source $DIR/.bashrc

   nvm install 0.12
   nvm install iojs

   nvm alias node 0.12
   nvm alias default iojs

   nvm use default
   status "Updating npm"
   npm update -g npm
else
   error "nvm could not be installed\nsince Homebrew is not installed."
fi
