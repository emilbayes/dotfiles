TOPICS ?=  bash aliases bin git atom osx

install:
	@echo $(TOPICS) | xargs -n1 make -C

configure: ~/.dotfiles/bashrc ~/.dotfiles/path ~/.dotfiles/env
	@echo $(TOPICS) | xargs -n1 make configure -C

~/.dotfiles/bashrc ~/.dotfiles/path ~/.dotfiles/env:
	mkdir -p $@
