.PHONY: all install uninstall restow list help

# Directory containing your dotfiles packages
DOTFILES_DIR := $(shell pwd)
# Default target directory (user's home)
TARGET_DIR := $(HOME)
# Get all directories (packages) in the current folder
PACKAGES := $(shell find . -maxdepth 1 -type d -not -path "." -not -path "./.git" -not -path "./.github" -exec basename {} \;)

# Default target
all: help

# Install all dotfiles
install:
	@echo "Installing dotfiles..."
	@for package in $(PACKAGES); do \
		echo "Stowing $$package..."; \
		stow -v -d $(DOTFILES_DIR) -t $(TARGET_DIR) $$package; \
	done
	@echo "Done!"

# Install a specific package
install-%:
	@echo "Installing $*..."
	@stow -v -d $(DOTFILES_DIR) -t $(TARGET_DIR) $*
	@echo "Done!"

# Uninstall all dotfiles
uninstall:
	@echo "Uninstalling dotfiles..."
	@for package in $(PACKAGES); do \
		echo "Unstowing $$package..."; \
		stow -v -D -d $(DOTFILES_DIR) -t $(TARGET_DIR) $$package; \
	done
	@echo "Done!"

# Uninstall a specific package
uninstall-%:
	@echo "Uninstalling $*..."
	@stow -v -D -d $(DOTFILES_DIR) -t $(TARGET_DIR) $*
	@echo "Done!"

# Restow (refresh) all dotfiles
restow:
	@echo "Restowing dotfiles..."
	@for package in $(PACKAGES); do \
		echo "Restowing $$package..."; \
		stow -v -R -d $(DOTFILES_DIR) -t $(TARGET_DIR) $$package; \
	done
	@echo "Done!"

# Restow a specific package
restow-%:
	@echo "Restowing $*..."
	@stow -v -R -d $(DOTFILES_DIR) -t $(TARGET_DIR) $*
	@echo "Done!"

# List all available packages
list:
	@echo "Available packages:"
	@for package in $(PACKAGES); do \
		echo "  - $$package"; \
	done

# Show help information
help:
	@echo "Dotfiles Management with GNU Stow"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  install         Install all dotfiles packages"
	@echo "  install-<pkg>   Install specific package (e.g., make install-zsh)"
	@echo "  uninstall       Uninstall all dotfiles packages"
	@echo "  uninstall-<pkg> Uninstall specific package (e.g., make uninstall-zsh)"
	@echo "  restow          Refresh all symlinks (reinstall all packages)"
	@echo "  restow-<pkg>    Refresh symlinks for specific package"
	@echo "  list            List all available packages"
	@echo "  help            Show this help message"
	@echo ""
	@echo "Available packages: $(PACKAGES)" 