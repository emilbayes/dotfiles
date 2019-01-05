install:

configure: ~/.gitconfig ~/.gitignore ~/.dotfiles/bashrc/git

~/.dotfiles/bashrc/git: .bashrc

~/.gitignore: gitignore-global
~/.gitconfig: gitconfig-global

~/%:
	cp $< $@
