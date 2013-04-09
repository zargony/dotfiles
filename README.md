# Zargony's dotfiles

## Installation

Clone the repository and run `rake`.

The rake install task will go through all files in the cloned repository and creates relative symlinks in the user's home directory.
- Subdirectories will be recursively created if missing.
- Existing files won't be overwritten.
- If you want to symlink a whole directory, just create an empty `.symlink` file in it.

## Examples

Assuming that you cloned the repository to ~/.dotfiles, here are a few examples of links that the installation will set up.

```
~/.vimrc      -> .dotfiles/.vimrc
~/.ssh/config -> ../.dotfiles/.ssh/config
~/bin         -> .dotfiles/bin  (which is a directory containing an empty .symlink file)
```

## Uninstall

Running `rake uninstall` will remove all symlinks that the installation created.
