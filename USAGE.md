# How to Use Homebrew Cask

## Frequently Used Commands

Homebrew Cask is implemented as part of Homebrew. All Homebrew Cask commands begin with `brew`, which works for both Casks and Formulae. The most frequently-used commands are:

* `install` — installs the given Cask.
* `uninstall` — uninstalls the given Cask.
* `reinstall` — reinstalls the given Cask.
* `list --casks` — lists installed Casks.

## Searching for Casks

To search for Casks, use `brew search`. Let’s see if there’s a Cask for Google Chrome:

```bash
$ brew search google-chrome
==> Casks
google-chrome                google-chrome-beta           google-chrome-canary         google-chrome-dev
```

## Installing Casks

The command `brew install` accepts one or multiple Cask tokens. Let’s try to install Google Chrome:

```bash
$ brew install google-chrome
==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'google-chrome'.
==> Installing Cask google-chrome
==> Moving App 'Google Chrome.app' to '/Applications/Google Chrome.app'.
🍺  google-chrome was successfully installed!
```

## Uninstalling Casks

Easy peasy:

```bash
$ brew uninstall google-chrome
```

This will both uninstall the Cask and remove applications which were moved to `/Applications`.

## Other Commands

* `info` — displays information about the given Cask.
* `fetch` — downloads remote application files for the given Cask to the local cache (with `--force`, re-download even if already cached).
* `--cache` — displays the path to Homebrew's local cache.
* `doctor` — checks for configuration issues.
* `style` — checks Cask style using RuboCop.
* `home` — opens the homepage of the given Cask; or with no arguments, the Homebrew project page.
* `uninstall --zap` — try to remove *all* files associated with a Cask (may include resources shared with other applications).
* `outdated` — lists all outdated Casks.
* `upgrade` — updates all outdated Casks.

The following commands are for Cask authors:

* `audit` — verifies installability of Casks.
* `cat` — dumps the given Cask to the standard output.
* `create --cask` — creates a Cask and opens it in an editor.
* `edit` — edits the given Cask.

The following aliases and abbreviations are provided for convenience:

* `ls` — `list`
* `-S` — `search`
* `rm`, `remove` — `uninstall`
* `dr` — `doctor`
* `abv` — `info`
* `homepage` — `home`

## Tab Completion

Homebrew Cask comes with `bash` and `zsh` completion for the `brew` command.

See https://docs.brew.sh/Shell-Completion for more information.

`fish` completions can be installed with:

```bash
$ brew install brew-cask-completion
```

## Inspecting Installed Casks

List all installed Casks:

```bash
$ brew list --casks
atom          google-chrome     1password
```

With `--full-name` the Tap name will also be included, _e.g._: `purple/monkey/dishwasher` for the Cask `dishwasher` installed from the Tap `purple/monkey`.

Given an installed Cask, `brew list --casks <cask_name>` lists the staged files.

Show details about a specific Cask:

```bash
$ brew info keepingyouawake
Error: No available formula with the name "keepingyouawake" 
Found a cask named "keepingyouawake" instead.

keepingyouawake: 1.5.2 (auto_updates)
https://keepingyouawake.app/
/usr/local/Caskroom/keepingyouawake/1.5.2 (129B)
From: https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/keepingyouawake.rb
==> Name
KeepingYouAwake
==> Description
Prevents your computer from going to sleep
==> Artifacts
KeepingYouAwake.app (App)
```

## Updating/Upgrading Casks

Since the Homebrew Cask repository is a Homebrew Tap, you’ll pull down the latest Casks every time you issue the regular Homebrew command `brew update`. You can check for outdated Casks with `brew outdated` and install the outdated Casks with `brew upgrade`. Many applications update themselves, so their Casks are ignored by `brew outdated` and `brew upgrade`. This behaviour can be overridden by adding `--greedy` to the command.

## Updating/Upgrading the Homebrew Cask Tool

Homebrew [automatically taps and keeps Homebrew Cask updated](https://github.com/Homebrew/homebrew-cask/pull/15381). `brew update` is all that is required.

## Additional Taps (optional)

The primary Homebrew Cask Tap includes most of the Casks that a typical user will be interested in. There are a few additional Taps where we store different kinds of Casks.

| Tap name | description |
| -------- | ----------- |
| [Homebrew/cask-versions](https://github.com/Homebrew/homebrew-cask-versions) | contains alternate versions of Casks (_e.g._ betas, nightly releases, old versions)
| [Homebrew/cask-fonts](https://github.com/Homebrew/homebrew-cask-fonts)       | contains Casks that install fonts
| [Homebrew/cask-drivers](https://github.com/Homebrew/homebrew-cask-drivers)   | contains Casks that install drivers for various devices

You can tap any of the above with a `brew tap` command:

```bash
$ brew tap <tap_name>
```

after which, Casks from the new Tap will be available to `search` or `install` just like Casks from the main Tap. `brew update` will automatically keep your new Tap up to date.

You may also specify a fully-qualified Cask token (which includes the Tap) for any `brew` command. This will implicitly add the Tap if you have not previously added it with `brew tap`:

```bash
$ brew install homebrew/cask-fonts/font-symbola
```

## Options

`brew` accepts a number of options:

* `--version`: print version and exit.
* `--debug`: output debug information.
* `--no-binaries`: skip symlinking executable binaries into `/usr/local/bin`.
* `--require-sha`: abort installation of Cask if no checksum is defined.
* `--no-quarantine`: [disable Apple’s quarantining](https://docs.brew.sh/FAQ#why-cant-i-open-a-mac-app-from-an-unidentified-developer) for the specific app.
* `--language=<iso-language>[,<iso-language> ... ]`: changes the language of the Cask to be installed. The first matching language is used, otherwise it uses the default language of the Cask.

You can also modify the default installation locations used when issuing `brew install`:

* `--appdir=/my/path` changes the path where the applications will be moved. Default is `/Applications`.
* `--fontdir=/my/path` changes the path for Fonts. Default is `~/Library/Fonts`.

See `man brew` for the other default installation locations and the flags to change them.

To make these settings persistent, you might want to add the following line to your `.profile`, `.bash_profile` or `.zprofile`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing options in the command line:

```bash
# Will force the Chrome app to be moved to /Applications
# even though HOMEBREW_CASK_OPTS specified ~/Applications
$ brew install --appdir="/Applications" google-chrome
```

## Other Ways to Specify a Cask

Most `brew` commands can accept a Cask token as an argument. As described above, the token on the command line can take the form of:

* A simple token, _e.g._: `google-chrome`.
* A fully-qualified token which includes the Tap, _e.g._: `homebrew/cask/google-chrome`.

`brew` also accepts three other forms as arguments:

* A path to a Cask file, _e.g._: `/usr/local/Library/Taps/homebrew/homebrew-cask/Casks/google-chrome.rb`.
* A `curl`-retrievable URI to a Cask file, _e.g._: `https://raw.githubusercontent.com/Homebrew/homebrew-cask/f25b6babcd398abf48e33af3d887b2d00de1d661/Casks/google-chrome.rb`.
* A file in the current working directory, _e.g._: `my-modfied-google-chrome.rb`. Note that matching Tapped Cask tokens will be preferred over this form when there is a conflict. To force the use of a Cask file in the current directory, specify a pathname with slashes, _e.g._: `./google-chrome.rb`.

The last three forms are intended for users who wish to maintain private Casks.

## Taps

You can add Casks to your existing (or new) Taps: just create a directory named `Casks` inside your Tap, put your Cask files there, and everything will just work.
