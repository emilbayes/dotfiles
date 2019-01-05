install: configure

configure: ~/Library/KeyBindings/DefaultKeyBinding.dict
	sudo bash set-defaults.sh

~/Library/KeyBindings/DefaultKeyBinding.dict: DefaultKeyBinding.dict
	mkdir -p ~/Library/KeyBindings
	cp $< $@
