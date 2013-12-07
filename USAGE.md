# How to Use

## Getting Started

First ensure you have Homebrew version '0.9' or higher:

    $ brew --version
    0.9.3

Tap this repository and install the `brew-cask` tool:

    $ brew tap phinze/homebrew-cask
    $ brew install brew-cask

Optional: to install alternate versions of Casks (e.g. betas or nightly
releases), tap the [caskroom/versions](https://github.com/caskroom/homebrew-versions)
repo:

    $ brew tap caskroom/versions

## Searching for Casks

Let's see if there's a Cask for Chrome:

    $ brew cask search chrome
    google-chrome

Listing all available Casks can be done with a `search` command with no search term:

    $ brew cask search
    # list of all available casks

## Installing Casks

    $ brew cask install google-chrome
    ==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
    ==> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
    ==> Linking Google Chrome.app to /Users/paulh/Applications/Google Chrome.app

## Inspecting Installed Casks

List all installed Casks

    $ brew cask list
    adium          google-chrome     one-password

Details about a single Cask:

    $ brew cask info caffeine
    caffeine: 1.1.1
    http://lightheadsw.com/caffeine/
    Not installed
    https://github.com/phinze/homebrew-cask/commits/master/Casks/caffeine.rb

## Updating/Upgrading Casks

Since this repository is a Tap, you'll pull down the latest Casks with a simple
`brew-update`. When the `brew-cask` tool itself is updated, it will show in
`brew outdated` and you can upgrade it via the normal Homebrew workflow.

## Uninstalling Casks

Easy peasy:

    brew cask uninstall google-chrome

This will both uninstall and unlink the Cask.

## Options

You can set options on the command-line and/or using the `HOMEBREW_CASK_OPTS` environment variable, e.g. (again, using google-chrome):

```bash
# This probably should happen in your ~/.{ba|z}shrc
$ export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Installs app links to /Applications
$ brew cask install google-chrome

# Trumps the ENV and installs app links to ~/Applications
$ brew cask install --appdir="~/Applications" google-chrome
```

# Taps

You can add Casks to your existing (or new) taps: just create a directory named
`Casks` inside your tap, put your Casks there, and everything will just work.

# Alfred Integration

I've been using Casks along with Alfred to great effect. Just add
`/opt/homebrew-cask/Caskroom` as a Search Scope in Alfred's preferences or
manage the scope addition via `brew cask alfred`. Then applications become
available in Alfred immediately after a `brew cask install`. Your fingertips
will thank you.

Oh, and you can `brew cask install alfred` too! Not bad, eh?
