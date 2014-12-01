# How to Use Homebrew-cask

## Getting Started

First ensure you have Homebrew version '0.9.5' or higher:

```bash
$ brew --version
0.9.5
```

Install the homebrew-cask tool:

```bash
$ brew install caskroom/cask/brew-cask
```

## Frequently Used Commands

Homebrew-cask is implemented as a subcommand of Homebrew.  All homebrew-cask
commands begin with `brew cask`.  Homebrew-cask has its own set of command
verbs many of which are similar to Homebrew's.  The most frequently-used
commands are:

* `search` -- searches all known Casks
* `install` -- installs the given Cask
* `uninstall` -- uninstalls the given Cask

## Searching for Casks

The `brew cask search` command accepts a series of substring arguments,
and returns tokens representing matching Casks.  Let's see if there's a
Cask for Google Chrome:

```bash
$ brew cask search chrome
google-chrome
```

A `search` command with no search term will list all available Casks:

```bash
$ brew cask search
# <list of all available Casks>
```

## Installing Casks

The command `brew cask install` accepts a Cask token as returned by `brew cask search`.
Let's try to install Google Chrome:

```bash
$ brew cask install google-chrome
==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
==> Success! google-chrome installed to /opt/homebrew-cask/Caskroom/google-chrome/stable-channel
==> Linking Google Chrome.app to /Users/paulh/Applications/Google Chrome.app
```

## Uninstalling Casks

Easy peasy:

```bash
$ brew cask uninstall google-chrome
```

This will both uninstall the Cask and remove symlinks which were created in
`~/Applications`.

To uninstall all versions of a Cask, use `--force`:

```bash
$ brew cask uninstall --force google-chrome
```

Note that `uninstall --force` is currently imperfect.  See the man page for
more information.

## Other Commands

* `info` -- displays information about the given Cask
* `list` -- with no args, lists installed Casks; given installed Casks, lists staged files
* `fetch` -- downloads Cask resources to local cache (with `--force`, re-download even if already cached)
* `doctor` -- checks for configuration issues
* `cleanup` -- cleans up cached downloads (with `--outdated`, only cleans old downloads)
* `home` -- opens the homepage of the given Cask; or with no arguments, the homebrew-cask project page
* `alfred` -- modifies Alfred's scope to include the Caskroom
* `update` -- a synonym for `brew update`
* `zap` -- try to remove *all* files associated with a Cask (including resources which may be shared with other applications)

The following commands are for Cask authors:

* `audit` -- verifies installability of Casks
* `cat` -- dumps the given Cask to the standard output
* `create` -- creates a Cask and opens it in an editor
* `edit` -- edits the given Cask

The following aliases and abbreviations are provided for convenience:

* `ls` -- `list`
* `-S` -- `search`
* `rm`, `remove` -- `uninstall`
* `up` -- `update`
* `dr` -- `doctor`

## Inspecting Installed Casks

List all installed Casks

```bash
$ brew cask list
adium          google-chrome     onepassword
```

Show details about a specific Cask:

```bash
$ brew cask info caffeine
caffeine: 1.1.1
http://lightheadsw.com/caffeine/
Not installed
https://github.com/caskroom/homebrew-cask/blob/master/Casks/caffeine.rb
```

## Updating/Upgrading Casks

Since the homebrew-cask repository is a Homebrew Tap, you'll pull down the latest
Casks every time you issue the regular Homebrew command `brew update`. Currently,
homebrew-cask cannot always detect if an Application has been updated. You
can force an update via the command `brew cask install --force`. We are working
on improving this.

It is generally safe to run updates from within an Application.

## Updating/Upgrading the Homebrew-cask Tool

When a new version homebrew-cask is released, it will appear in the output of
`brew outdated` after running `brew update`.  You can upgrade it via the normal
Homebrew `brew upgrade` workflow:
```bash
$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```

## Additional Taps (optional)

The primary homebrew-cask Tap includes most of the Casks that a typical user will
be interested in. There are a few additional Taps where we store different kinds
of Casks.

| Tap name | description |
| -------- | ----------- |
| [caskroom/versions](https://github.com/caskroom/homebrew-versions)     | contains alternate versions of Casks (e.g. betas, nightly releases, old versions)
| [caskroom/fonts](https://github.com/caskroom/homebrew-fonts)           | contains Casks that install fonts, which are kept separate so we can educate users about the different licensing landscape around font installation/usage
| [caskroom/unofficial](https://github.com/caskroom/homebrew-unofficial) | contains Casks that install unofficial builds or forks

There are also [alternate Cask Taps](doc/ALTERNATE_CASK_TAPS.md#alternate-cask-taps-maintained-by-users) maintained by users.

You can tap any of the above with a `brew tap` command:

```bash
$ brew tap <tap_name>
```

after which, Casks from the new Tap will be available to `search` or `install` just like Casks from the main Tap.
`brew update` will automatically keep your new Tap up to date.

You may also specify a fully-qualified Cask token (which includes the Tap) for any `brew cask` command.  This will implicitly add the Tap if you have not previously added it with `brew tap`:

```bash
$ brew cask install caskroom/fonts/font-symbola
```

## Options

`brew cask` accepts a number of options:

* `--version`: print version and exit
* `--debug`: output debug information
* `--no-binaries`: skip symlinking executable binaries into `/usr/local/bin`

You can also modify the default installation locations used when issuing `brew cask install`:

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
* `--binarydir=/my/path` changes the path for binary symlinks.
Default is `/usr/local/bin`
* `--input_methoddir=/my/path` changes the path for Input Methods symlinks.
Default is `~/Library/Input Methods`
* `--screen_saverdir=/my/path` changes the path for Screen Saver symlinks.
Default is `~/Library/Screen Savers`


To make these settings persistent, you might want to add the following line to your `.bash_profile` or `.zshenv`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing
options in the command line:

```bash
# Will force the Chrome app to be linked to ~/Applications
# even though HOMEBREW_CASK_OPTS specified /Applications
$ brew cask install --appdir="~/Applications" google-chrome
```

## Advanced searching

The default search algorithm is a lax substring approach, which does not
use the command-line arguments exactly as given.  If you need to specify
a search more precisely, a single search argument enclosed in `/` characters
will be taken as a Ruby regular expression:

```bash
$ brew cask search '/^google.c[a-z]rome$/'
google-chrome
```

## Other Ways to Specify a Cask

Most `brew cask` commands can accept a Cask token as an argument. As described
above, the token on the command line can take the form of:

 * a token as returned by `brew cask search`, _eg_: `google-chrome`
 * a fully-qualified token which includes the Tap, _eg_: `caskroom/fonts/font-symbola`

`brew cask` also accepts three other forms as arguments

 * a path to a Cask file, _eg_: `/usr/local/Cellar/brew-cask/0.25.0/Casks/google-chrome.rb`
 * a `curl`-retrievable URI to a Cask file, _eg_: `https://raw.github.com/caskroom/homebrew-cask/f54bbfaae0f2fa7210484f46313a459cb8a14d2f/Casks/google-chrome.rb`
 * a file in the current working directory, _eg_: `my-modfied-google-chrome.rb`.  Note
   that matching Tapped Cask tokens will be preferred over this form when there is a
   conflict.  To force the use of a Cask file in the current directory, specify a
   pathname with slashes, _eg_: `./google-chrome.rb`.

The last three forms are intended for users who wish to maintain private Casks.

## Taps

You can add Casks to your existing (or new) Taps: just create a directory named
`Casks` inside your Tap, put your Cask files there, and everything will just work.

## Alfred Integration

`/opt/homebrew-cask/Caskroom` as a Search Scope in Alfred's preferences or
I've been using Casks along with Alfred 2 to great effect. Just add
manage the scope addition via `brew cask alfred link`. Then applications become
available in Alfred immediately after a `brew cask install`. Your fingertips
will thank you.

Oh, and you can `brew cask install alfred` too! Not bad, eh?
