if [ -f $(which brew) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   brew cask install atom

   eval "$(sed -E 's/^/apm install &/' $DIR/apm)"

   mkdir ~/.atom
   cp $DIR/keymap.cson $DIR/snippets.cson $DIR/config.cson ~/.atom
else
   error "atom could not be installed\nsince Homebrew is not installed."
fi
