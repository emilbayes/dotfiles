	#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#Check for Homebrew
if [ ! -f $(which brew) ]
then
  status "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

#Install brew and cask
status "Installing Brewfile"
eval "$(sed -E 's/^(info|tap|install|uninstall|search|list|outdated|update|upgrade|cask|cleanup)/brew &/' $DIR/Brewfile)"
status "Installing Caskfile"
eval "$(sed -E 's/^(info|tap|install|uninstall|search|list|outdated|update|upgrade|cask|cleanup)/brew &/' $DIR/Caskfile)"
