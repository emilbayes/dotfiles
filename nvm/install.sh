if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   brew install nvm
   source $DIR/.env
   source $DIR/.bashrc

   nvm install 5.1
   nvm alias latest 5.1
   nvm alias default latest

   nvm use default
   status "Updating npm"
   npm update -g npm
else
   error "nvm could not be installed\nsince Homebrew is not installed."
fi
