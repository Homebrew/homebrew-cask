# How to Use

## Getting Started

First ensure you have Homebrew version '0.9' or higher:

    $ brew --version
    0.9.3

Tap this repository and install the `brew-cask` tool:

    $ brew tap phinze/homebrew-cask
    $ brew install brew-cask

### Additional Taps (optional)

The primary tap includes most of the Casks that a normal user will be
interested in. There are a few additional Taps where we store different kinds
of Casks.

| tap name | description |
| -------- | ----------- |
| [caskroom/versions](https://github.com/caskroom/homebrew-versions) | contains alternate versions of Casks (e.g. betas, nightly releases, old versions)
| [caskroom/fonts](https://github.com/caskroom/homebrew-fonts) | contains casks that install fonts, which are kept separate so we can educate users about the different licensing landscape around font installation/usage

You can tap any of the above with a command like this:

    $ brew tap (tap name)

Once that command completes, you should see the list of Casks in the tap alongside the Casks in the main repo. You use the same commands to interact with these additional Casks, and `brew update` will automatically update all Taps.

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

You can provide a number of options to the `brew cask` command to modify the default
installation locations.

* `--caskroom=/my/path` determines where the actual applications will be located.
Default is `/opt/homebrew-cask/Caskroom`
* `--appdir=/my/path` changes the path where the symlinks to the applications (above)
will be generated. This is commonly used to create the links in the _root_ Applications directory
instead of the _home_ Applications directory by specifying `--appdir=/Applications`. Default is `~/Applications`.
* `--prefpanedir=/my/path` changes the path for PreferencePane symlinks.
Default is `~/Library/PreferencePanes`
* `--qlplugindir=/my/path` changes the path for Quicklook Plugin symlinks.
Default is `~/Library/QuickLook`
* `--widgetdir=/my/path` changes the path for Dashboard Widget symlinks.
Default is `~/Library/Widgets`
* `--fontdir=/my/path` changes the path for Fonts symlinks.
Default is `~/Library/Fonts`

To make these changes permanent, you might want to add the following line to your `.bash_profile` or `.zshenv`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing
the options in the command line:

```bash
# Will force the Chrome app to be linked to ~/Applications
# even though HOMEBREW_CASK_OPTS specified /Applications
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
