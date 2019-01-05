install: atom

# Check that brew is installed, otherwise, do so
atom:
	@type atom >/dev/null 2>&1 || \
		echo "Installing atom" && \
		brew cask install atom

apm:
	@echo "Installing apm packages"
	@eval "$$(cat apm | sed -E 's/^[a-z].+/apm install &/i')"

configure: ~/.atom ~/.atom/keymap.cson ~/.atom/snippets.cson ~/.atom/config.cson apm

~/.atom:
	mkdir -p $@

~/.atom/keymap.cson: keymap.cson
~/.atom/snippets.cson: snippets.cson
~/.atom/config.cson: config.cson

~/.atom/%:
	cp $< $@
