# How to Use Homebrew Cask

## Getting Started

First ensure you have Homebrew version `0.9.5` or higher:

```bash
$ brew --version
0.9.5
```

## Frequently Used Commands

Homebrew Cask is implemented as a subcommand of Homebrew. All Homebrew Cask commands begin with `brew cask`. Homebrew Cask has its own set of command verbs many of which are similar to Homebrew’s. The most frequently-used
commands are:

* `install` — installs the given Cask
* `uninstall` — uninstalls the given Cask
* `list` — lists installed Casks

## Searching for Casks

To search for Casks, use `brew search`. Let’s see if there’s a Cask for Google Chrome:

```bash
$ brew search google-chrome
==> Casks
google-chrome
homebrew/cask-versions/google-chrome-beta
homebrew/cask-versions/google-chrome-canary
homebrew/cask-versions/google-chrome-dev
```

## Installing Casks

The command `brew cask install` accepts one or multiple Cask tokens. Let’s try to install Google Chrome:

```bash
$ brew cask install google-chrome
==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
==> Moving App 'Google Chrome.app' to '/Applications/Google Chrome.app'
🍺  google-chrome was successfully installed!
```

## Uninstalling Casks

Easy peasy:

```bash
$ brew cask uninstall google-chrome
```

This will both uninstall the Cask and remove applications which were moved to `/Applications`.

To uninstall all versions of a Cask, use `--force`:

```bash
$ brew cask uninstall --force google-chrome
```

Note that `uninstall --force` is currently imperfect. See the man page for more information.

## Other Commands

* `info` — displays information about the given Cask
* `list` — with no args, lists installed Casks; given installed Casks, lists staged files (with `--full-name`, include tap name)
* `fetch` — downloads remote application files for the given Cask to the local cache (with `--force`, re-download even if already cached)
* `doctor` — checks for configuration issues
* `style` — checks Cask style using RuboCop
* `home` — opens the homepage of the given Cask; or with no arguments, the Homebrew Cask project page
* `zap` — try to remove *all* files associated with a Cask (may include resources shared with other applications)
* `outdated` - lists all outdated Casks
* `upgrade` - updates all outdated Casks

The following commands are for Cask authors:

* `audit` — verifies installability of Casks
* `cat` — dumps the given Cask to the standard output
* `create` — creates a Cask and opens it in an editor
* `edit` — edits the given Cask

The following aliases and abbreviations are provided for convenience:

* `ls` — `list`
* `-S` — `search`
* `rm`, `remove` — `uninstall`
* `dr` — `doctor`

## Tab Completion

Homebrew Cask comes with `bash` and `zsh` completion for the `brew cask` command.

See https://docs.brew.sh/Shell-Completion for more information.

`fish` completions can be installed with:

```bash
$ brew install brew-cask-completion
```

## Inspecting Installed Casks

List all installed Casks:

```bash
$ brew cask list
atom          google-chrome     1password
```

Show details about a specific Cask:

```bash
$ brew cask info caffeine
caffeine: 1.1.1
http://lightheadsw.com/caffeine/
Not installed
From: https://github.com/Homebrew/homebrew-cask/blob/master/Casks/caffeine.rb
==> Name
Caffeine
==> Artifacts
Caffeine.app (app)
```

## Updating/Upgrading Casks

Since the Homebrew Cask repository is a Homebrew Tap, you’ll pull down the latest Casks every time you issue the regular Homebrew command `brew update`. You can check for outdated Casks with `brew cask outdated` and install the outdated Casks with `brew cask upgrade`. Many applications update themselves, so their Casks are ignored by `brew cask outdated` and `brew cask upgrade`. This behaviour can be overridden by adding `--greedy` to the command.

## Updating/Upgrading the Homebrew Cask Tool

Homebrew [automatically taps and keeps Homebrew Cask updated](https://github.com/Homebrew/homebrew-cask/pull/15381). `brew update` is all that is required.

## Additional Taps (optional)

The primary Homebrew Cask Tap includes most of the Casks that a typical user will be interested in. There are a few additional Taps where we store different kinds of Casks.

| Tap name | description |
| -------- | ----------- |
| [Homebrew/cask-versions](https://github.com/Homebrew/homebrew-cask-versions) | contains alternate versions of Casks (e.g. betas, nightly releases, old versions)
| [Homebrew/cask-fonts](https://github.com/Homebrew/homebrew-cask-fonts)       | contains Casks that install fonts
| [Homebrew/cask-drivers](https://github.com/Homebrew/homebrew-cask-drivers)   | contains Casks that install drivers for various devices

You can tap any of the above with a `brew tap` command:

```bash
$ brew tap <tap_name>
```

after which, Casks from the new Tap will be available to `search` or `install` just like Casks from the main Tap. `brew update` will automatically keep your new Tap up to date.

You may also specify a fully-qualified Cask token (which includes the Tap) for any `brew cask` command. This will implicitly add the Tap if you have not previously added it with `brew tap`:

```bash
$ brew cask install homebrew/cask-fonts/font-symbola
```

## Options

`brew cask` accepts a number of options:

* `--version`: print version and exit
* `--debug`: output debug information
* `--no-binaries`: skip symlinking executable binaries into `/usr/local/bin`
* `--require-sha`: abort installation of cask if no checksum is defined
* `--language=<iso-language>[,<iso-language> ... ]` changes the language of the cask to be installed. The first matching language is used, otherwise it uses the default language of the cask.

You can also modify the default installation locations used when issuing `brew cask install`:

* `--appdir=/my/path` changes the path where the applications will be moved. Default is `/Applications`.
* `--fontdir=/my/path` changes the path for Fonts. Default is `~/Library/Fonts`.
* See `man brew-cask` for the other default installation locations and the flags to change them.

To make these settings persistent, you might want to add the following line to your `.bash_profile` or `.zshenv`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing options in the command line:

```bash
# Will force the Chrome app to be moved to /Applications
# even though HOMEBREW_CASK_OPTS specified ~/Applications
$ brew cask install --appdir="/Applications" google-chrome
```

## Other Ways to Specify a Cask

Most `brew cask` commands can accept a Cask token as an argument. As described above, the token on the command line can take the form of:

* A simple token, _eg_: `google-chrome`.
* A fully-qualified token which includes the Tap, _eg_: `homebrew/cask-fonts/font-symbola`.

`brew cask` also accepts three other forms as arguments:

* A path to a Cask file, _eg_: `/usr/local/Library/Taps/homebrew/homebrew-cask/Casks/google-chrome.rb`.
* A `curl`-retrievable URI to a Cask file, _eg_: `https://raw.githubusercontent.com/Homebrew/homebrew-cask/f25b6babcd398abf48e33af3d887b2d00de1d661/Casks/google-chrome.rb`.
* A file in the current working directory, _eg_: `my-modfied-google-chrome.rb`. Note that matching Tapped Cask tokens will be preferred over this form when there is a conflict. To force the use of a Cask file in the current directory, specify a pathname with slashes, _eg_: `./google-chrome.rb`.

The last three forms are intended for users who wish to maintain private Casks.

## Taps

You can add Casks to your existing (or new) Taps: just create a directory named `Casks` inside your Tap, put your Cask files there, and everything will just work.
