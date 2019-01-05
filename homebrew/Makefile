install: homebrew brew cask

# Check that brew is installed, otherwise, do so
homebrew:
	@type brew >/dev/null 2>&1 || \
		echo "Installing homebrew" && \
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew: Brewfile homebrew
	@echo "Installing Brewfile"
	@eval "$$(cat Brewfile | sed -E 's/^(info|tap|install|uninstall|search|list|outdated|update|upgrade|cask|cleanup)/brew &/')"

cask: Caskfile homebrew
	@echo "Installing Crewfile"
	@ HOMEBREW_CASK_OPTS="--appdir=/Applications" \
		eval "$$(cat Caskfile | sed -E 's/^(info|tap|install|uninstall|search|list|outdated|update|upgrade|cask|cleanup)/brew &/')"

configure: ~/.dotfiles/bashrc/homebrew ~/.dotfiles/path/homebrew ~/.dotfiles/env/homebrew

~/.dotfiles/bashrc/homebrew: .bashrc
~/.dotfiles/path/homebrew: .env
~/.dotfiles/env/homebrew: .path

~/.dotfiles/%:
	cp $< $@
