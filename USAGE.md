# How to Use Homebrew Cask

## Frequently Used Commands

Homebrew Cask is implemented as part of [Homebrew](https://brew.sh). All Homebrew Cask commands begin with `brew`, which works for both casks and formulae. The most frequently-used commands are:

* `install --cask` — installs the given cask.
* `uninstall --cask` — uninstalls the given cask.
* `reinstall --cask` — reinstalls the given cask.
* `list --cask` — lists installed casks.

## Searching for Casks

To search for casks, use `brew search`. Let’s see if there’s a cask for Google Chrome:

```console
$ brew search --cask google-chrome
==> Casks
google-chrome                google-chrome@beta           google-chrome@canary         google-chrome@dev
```

## Installing Casks

The command `brew install --cask` accepts one or multiple cask tokens. Let’s try to install Mozilla Firefox:

```console
$ brew install --cask firefox
==> Downloading https://raw.githubusercontent.com/Homebrew/homebrew-cask/ba243ff8f7984a43088e0a1721e872cdd9ae7df0/Casks/f/firefox.rb
######################################################################## 100.0%
==> Downloading https://download-installer.cdn.mozilla.net/pub/firefox/releases/128.0/mac/en-US/Firefox%20128.0.dmg
######################################################################## 100.0%
==> Installing Cask firefox
==> Moving App 'Firefox.app' to '/Applications/Firefox.app'
==> Linking Binary 'firefox.wrapper.sh' to '/opt/homebrew/bin/firefox'
🍺  firefox was successfully installed!
```

## Uninstalling Casks

Easy peasy:

```console
$ brew uninstall --cask google-chrome
```

This will both uninstall the cask and remove the applications that were moved to `/Applications`.

## Other Commands

Unless noted, these are run with `--cask <cask_token>` to apply to Homebrew Cask.

* `info` — displays information about the given cask.
* `fetch` — downloads remote application files for the given cask to the local cache (with `--force`, re-downloads even if already cached).
* `--cache` — displays the expected path to Homebrew's local cache of application files.
* `doctor` — checks for configuration issues (run with no arguments).
* `style` — checks style for the given cask using RuboCop.
* `home` — opens the homepage of the given cask; or with no arguments, the Homebrew project page.
* `uninstall --zap` — try to remove *all* files associated with a cask (may include resources shared with other applications).
* `outdated` — lists all outdated casks (run with just `--cask`).
* `upgrade` — updates all outdated casks (run with just `--cask`).

The following commands are for cask authors:

* `audit` — verifies installability of casks.
* `cat` — dumps the given cask to the standard output.
* `create --cask` — creates a cask and opens it in an editor.
* `edit` — edits the given cask.

The following aliases and abbreviations are provided for convenience:

* `ls` — `list`
* `-S` — `search`
* `rm`, `remove` — `uninstall`
* `dr` — `doctor`
* `abv` — `info`
* `homepage` — `home`

## Tab Completion

Homebrew comes with `bash`, `zsh` and `fish` tab completion for the `brew` command. See [`brew` Shell Completion](https://docs.brew.sh/Shell-Completion) for more information.

## Inspecting Installed Casks

List staged files for an installed cask:

```console
$ brew list --cask firefox
==> App
/Applications/Firefox.app (112 files, 360MB)
```

List all installed casks:

```console
$ brew list --cask
firefox       google-chrome     opera
```

With `--full-name` any external tap names will also be included, _e.g._: `purple/monkey/dishwasher` for the cask `dishwasher` installed from the tap `purple/monkey`.

Show details about a specific cask:

```console
$ brew info keepingyouawake
==> keepingyouawake: 1.6.4 (auto_updates)
https://keepingyouawake.app/
/usr/local/Caskroom/keepingyouawake/1.6.4 (129B)
From: https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/k/keepingyouawake.rb
==> Name
KeepingYouAwake
==> Description
Tool to prevent the system from going into sleep mode
==> Artifacts
KeepingYouAwake.app (App)
```

## Updating/Upgrading Casks

Since the Homebrew Cask repository is a Homebrew tap, you’ll pull down the latest casks every time you issue the regular Homebrew command `brew update`. You can check for outdated casks with `brew outdated` and install the outdated casks with `brew upgrade`. Many applications update themselves, so their casks are ignored by `brew outdated` and `brew upgrade`. This behaviour can be overridden by adding `--greedy` to either command.

## Updating/Upgrading Homebrew Cask

Homebrew [automatically taps and keeps Homebrew Cask updated](https://github.com/Homebrew/homebrew-cask/pull/15381). `brew update` is all that is required.

## Options

`brew` accepts a number of options:

* `--version`: print version and exit.
* `--debug`: output debug information.
* `--no-binaries`: skip symlinking executable binaries into `/usr/local/bin`.
* `--require-sha`: abort installation of cask if no checksum is defined.
* `--no-quarantine`: [disable Apple’s quarantining](https://docs.brew.sh/FAQ#why-cant-i-open-a-mac-app-from-an-unidentified-developer) for the specific app.
* `--language=<iso-language>[,<iso-language> ... ]`: changes the language of the cask to be installed. The first matching language is used, otherwise it uses the default language of the cask.

You can also modify the default installation locations used when issuing `brew install`:

* `--appdir=/my/path` changes the path where the applications will be moved. Default is `/Applications`.
* `--fontdir=/my/path` changes the path for fonts. Default is `~/Library/Fonts`.

See `man brew` for the other default installation locations and the flags to change them.

To make these settings persistent, you might want to add the following line to your `.profile`, `.bash_profile` or `.zprofile`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing options in the command line:

```bash
# Will force the Google Chrome app to be moved to /Applications
# even though HOMEBREW_CASK_OPTS specified ~/Applications
brew install --appdir="/Applications" google-chrome
```

## Other Ways to Specify a Cask

Most `brew` commands can accept a cask token as an argument. As described above, the token on the command line can take the form of:

* A simple token, _e.g._: `google-chrome`.
* A fully-qualified token which includes the tap, _e.g._: `homebrew/cask/google-chrome`.

`brew` also accepts three other forms as arguments:

* A path to a cask file, _e.g._: `/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/g/google-chrome.rb`.
* A `curl`-retrievable URI to a cask file, _e.g._: `https://raw.githubusercontent.com/Homebrew/homebrew-cask/HEAD/Casks/g/google-chrome.rb`.
* A file in the current working directory, _e.g._: `my-modified-google-chrome.rb`. Note that matching tapped cask tokens will be preferred over this form when there is a conflict. To force the use of a cask file in the current directory, specify a pathname with slashes, _e.g._: `./google-chrome.rb`.

The last three forms are intended for users who wish to maintain private casks.

## Taps

You can add casks to your existing (or new) taps: just create a directory named `Casks` inside your tap, put your cask files there, and everything will just work.
