if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   brew tap homebrew/homebrew-php

   brew install php70
   brew install composer
   brew install composer-completion

   source $DIR/.env
   source $DIR/.bashrc
else
   error "php, composer and composer-completion could not be installed\nsince Homebrew is not installed."
fi
