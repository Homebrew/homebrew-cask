# Automating with Homebrew Cask
Homebrew Cask allows you to install several applications at once. Calling `cask install` with multiple arguments works as you would expect:  
`brew cask install vagrant virtualbox`

However, this approach doesn't scale very well. For large numbers of applications, you want a list that's easy to organize and a way to use it when needed. In Homebrew Cask, the `Caskfile` is one such list, and `brew bundle` is the way to use it.

## `brew bundle Caskfile`
A Caskfile is a plain text document containing a set of Homebrew commands, one per line. `brew bundle` will read it and execute all instructions in the order they appear.

For example, on a freshly installed OS X, you could `brew bundle` the following `Caskfile` to set up Homebrew Cask and a few basic tools:
```bash
# Install Cask
install phinze/cask/brew-cask

# Productivity tools
cask install alfred
cask install slate

# Utilities
cask install asepsis
cask install caffeine
cask install flux
cask install qlstephen

# Virtualization
cask install vagrant
cask install virtualbox

# Applications
cask install git-annex
cask install google-chrome
cask install iterm2
```
