## Overview

These dotfiles rely on GNU Stow to create and manage symbolic links. Each folder in this repository represents a distinct package (e.g., zsh, vim, nvim). By using Stow, symbolic links are created in your home directory, pointing to the actual files in this repository.

## Requirements

Make sure you have GNU Stow installed:
- On Debian/Ubuntu:
  ```
  sudo apt-get install stow
  ```
- On macOS (with Homebrew):
  ```
  brew install stow
  ```

## Installation

1. Clone this repository into a folder (for example, ~/dotfiles).
2. Navigate into the cloned repository.
3. Run:
   ```
   make install
   ```
   This command will install (stow) all available packages into your home directory.

## Usage

• List available packages:
  ```
  make list
  ```

• Install all packages:
  ```
  make install
  ```

• Install a specific package:
  ```
  make install-<package-name>
  ```

• Uninstall all packages:
  ```
  make uninstall
  ```

• Uninstall a specific package:
  ```
  make uninstall-<package-name>
  ```

• Restow (refresh links) for all packages:
  ```
  make restow
  ```

• Restow a specific package:
  ```
  make restow-<package-name>
  ```

## Observability and Logging

While this repository does not include an advanced logging system, the Makefile commands will print the actions being taken for each package, ensuring you can observe what changes are being made to your system.

## Adding New Packages

1. Create a new folder in the repository with the configuration files you want to manage.
2. Add the folder to the repository and push your changes.
3. The new folder will be recognized automatically, and you can install it with:
   ```
   make install-<new-package>
   ```

That's all! Happy dotfiles management!

