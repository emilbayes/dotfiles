install: nvm

# Check that brew is installed, otherwise, do so
nvm:
	@type nvm >/dev/null 2>&1 || \
		echo "Installing nvm" && \
		(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash) && \
		echo "Please restart your terminal for nvm to take effect"

configure: ~/.dotfiles/bashrc/nvm install-latest update-npm

install-latest:
	nvm ls-remote
	nvm install node --reinstall-packages-from=default
	nvm alias latest node
	nvm alias default latest
	nvm use default

update-npm:
	npm update -g npm

~/.dotfiles/bashrc/nvm: .bashrc
~/.dotfiles/%:
	cp $< $@
