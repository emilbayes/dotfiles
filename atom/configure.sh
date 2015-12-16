if [ -f $(which atom) ]
then
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

   eval "$(sed -e 's/^[a-z].+/apm install &/' $DIR/apm)"

   mkdir ~/.atom
   cp $DIR/keymap.cson $DIR/snippets.cson $DIR/config.cson ~/.atom
else
   error "atom could not be installed\nsince Homebrew is not installed."
fi
