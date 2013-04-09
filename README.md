# Zargony's dotfiles

## Installation

Clone the repository and run `rake`.

The rake install task will go through all files in the cloned repository and creates relative symlinks in the user's home directory. Subdirectories will be recursively created if missing. Existing files wont't be overwritten. If you want to symlink a whole directory, just create an empty `.symlink` file in it.

## Uninstall

Running `rake uninstall` will remove all symlinks that the installation created.
