BIN_PATH="/usr/bin"

all:
	@echo "Run 'make install' for installation"
	@echo "Run 'make uninstall' for uninstallation"

install:
	cp getip $(BIN_PATH)/getip
	cp bash_completion /usr/share/bash-completion/completions/getip

uninstall:
	rm -f $(BIN_PATH)/getip
	rm -f /usr/share/bash-completion/completions/getip
