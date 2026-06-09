SOURCE = stereoscopic.lua
DEST = $(XDG_CONFIG_HOME)/mpv/scripts

install:
	mkdir -p $(DEST)
	cp $(SOURCE) $(DEST)/
	chmod 644 $(DEST)/$(SOURCE)
	@echo "Installed $(SOURCE) to $(DEST)"

uninstall:
	rm -f $(DEST)/$(SOURCE)
	@echo "Uninstalled $(SOURCE) from $(DEST)"

.PHONY: install uninstall
