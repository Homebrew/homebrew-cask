brew-cask(1) - a friendly binary installer for macOS
========================================================

## SYNOPSIS

`brew cask` command [options] [ <token> ... ]

## DESCRIPTION

Homebrew-Cask is a tool for installing precompiled macOS binaries (such as
Applications) from the command line. The user is never required to use the
graphical user interface.

## ALPHA-QUALITY SOFTWARE

Homebrew-Cask works robustly enough that we welcome new users, but the
project is still in early development. That means command names, option
names, and other aspects of this manual are still subject to change.

## FREQUENTLY USED COMMANDS

  * `install [--force] [--skip-cask-deps] [--require-sha]` <token> [ <token> ... ]:
    Install Cask identified by <token>.

  * `uninstall [--force]` <token> [ <token> ... ]:
    Uninstall Cask identified by <token>.

  * `search` <text> | /<regexp>/:
    Perform a substring search of known Cask tokens for <text>. If the text
    is delimited by slashes, it is interpreted as a Ruby regular expression.

    The tokens returned by `search` are suitable as arguments for most other
    commands, such as `install` or `uninstall`.

## COMMANDS

  * `audit` [ <token> ... ]:
    Check the given Casks for installability.
    If no tokens are given on the command line, all Casks are audited.

  * `cat` <token> [ <token> ... ]:
    Dump the given Cask definition file to the standard output.

  * `cleanup` [--outdated]:
    Clean up cached downloads and tracker symlinks. With `--outdated`,
    only clean up cached downloads older than 10 days old.

  * `create` <token>:
    Generate a Cask definition file for the Cask identified by <token>
    and open a template for it in your favorite editor.

  * `doctor` or `dr`:
    Check for configuration issues. Can be useful to upload as a gist for
    developers along with a bug report.

  * `edit` <token>:
    Open the given Cask definition file for editing.

  * `fetch` [--force] <token> [ <token> ... ]:
    Download remote application files for the given Cask to the local
    cache. With `--force`, force re-download even if the files are already
    cached.

  * `home` or `homepage` [ <token> ... ]:
    Display the homepage associated with a given Cask in a browser.

    With no arguments, display the project page <http://caskroom.io>.

  * `info` or `abv` <token> [ <token> ... ]:
    Display information about the given Cask.

  * `install [--force] [--skip-cask-deps] [--require-sha]` <token> [ <token> ... ]:
    Install the given Cask. With `--force`, re-install even if the Cask
    appears to be already present. With `--skip-cask-deps`, skip any Cask
    dependencies. `--require-sha` will abort installation if the Cask does not
    have a checksum defined.

    <token> is usually the ID of a Cask as returned by `brew cask search`,
    but see [OTHER WAYS TO SPECIFY A CASK][] for variations.

  * `list` or `ls` [-1 | -l] [ <token> ... ]:
    Without any arguments, list all installed Casks. With `-1`, always
    format the output in a single column. With `-l`, give a more detailed
    listing.

    If <token> is given, summarize the staged files associated with the
    given Cask.

  * `search` or `-S`:
    Display all Casks available for install.

  * `search` or `-S` <text> | /<regexp>/:
    Perform a substring search of known Cask tokens for <text>. If the text
    is delimited by slashes, it is interpreted as a Ruby regular expression.

  * `style` [--fix] [ <token> ... ]:
   Check the given Casks for correct style using [RuboCop Cask](https://github.com/caskroom/rubocop-cask).
   If no tokens are given on the command line, all Casks are checked.
   With `--fix`, auto-correct any style errors if possible.

  * `uninstall [--force]` or `rm` or `remove` <token> [ <token> ... ]:
    Uninstall the given Cask. With `--force`, uninstall even if the Cask
    does not appear to be present.

    Note that `uninstall --force` is currently imperfect. It will follow
    the `uninstall` instructions from *newest* Cask definition, even if
    the given Cask has changed since you installed it. The result is that
    `uninstall --force` will always succeed in removing relevant files
    under `<Caskroom_path>`, but will sometimes fail to remove relevant
    installed files outside of it. This issue is being
    addressed.

    `uninstall` without `--force` is also imperfect. It may be unable to
    perform an `uninstall` operation if the given Cask has changed since you
    installed it. This issue is being addressed.

  * `update`:
    For convenience. `brew cask update` is a synonym for `brew update`.

  * `zap` <token> [ <token> ... ]:
    Unconditionally remove _all_ files associated with the given Cask.

    Implicitly performs all actions associated with `uninstall`, even if
    the Cask does not appear to be currently installed.

    Removes all staged versions of the Cask distribution found under
    `<Caskroom_path>/<token>`.

    If the Cask definition contains a `zap` stanza, performs additional
    `zap` actions as defined there, such as removing local preference
    files. `zap` actions are variable, depending on the level of detail
    defined by the Cask author.

    **`zap` may remove files which are shared between applications.**

## OPTIONS

To make these options persistent, see the ENVIRONMENT section, below.

Some of these (such as `--prefpanedir`) may be subject to removal
in a future version.

  * `--force`:
    Force an install to proceed even when a previously-existing install
    is detected.

  * `--skip-cask-deps`:
    Skip Cask dependencies when installing.

  *  `--require-sha`:
    Abort Cask installation if the Cask does not have a checksum defined.

  * `--caskroom=<path>`:
    Location of the Caskroom, where all binaries are stored. The default value is: `$(brew --repository)/Caskroom`.

  * `--verbose`:
    Give additional feedback during installation.

  * `--appdir=<path>`:
    Target location for Applications. The default value is `/Applications`.

  * `--colorpickerdir=<path>`:
    Target location for Color Pickers. The default value is `~/Library/ColorPickers`.

  * `--prefpanedir=<path>`:
    Target location for Preference Panes. The default value is `~/Library/PreferencePanes`.

  * `--qlplugindir=<path>`:
    Target location for QuickLook Plugins. The default value is `~/Library/QuickLook`.

  * `--fontdir=<path>`:
    Target location for Fonts. The default value is `~/Library/Fonts`.

  * `--servicedir=<path>`:
    Target location for Services. The default value is `~/Library/Services`.

  * `--input_methoddir=<path>`:
    Target location for Input Methods. The default value is `~/Library/Input Methods`.

  * `--internet_plugindir=<path>`:
    Target location for Internet Plugins. The default value is `~/Library/Internet Plug-Ins`.

  * `--audio_unit_plugindir=<path>`:
    Target location for Audio Unit Plugins. The default value is `~/Library/Audio/Plug-Ins/Components`.

  * `--vst_plugindir=<path>`:
    Target location for VST Plugins. The default value is `~/Library/Audio/Plug-Ins/VST`.

  * `--vst3_plugindir=<path>`:
    Target location for VST3 Plugins. The default value is `~/Library/Audio/Plug-Ins/VST3`.

  * `--screen_saverdir=<path>`:
    Target location for Screen Savers. The default value is `~/Library/Screen Savers`.

  * `--no-binaries`:
    Do not link "helper" executables to `/usr/local/bin`.

  * `--debug`:
    Output debugging information of use to Cask authors and developers.

## INTERACTION WITH HOMEBREW

Homebrew-Cask is implemented as a external command for Homebrew. That means
this project is entirely built upon the Homebrew infrastructure. For
example, upgrades to the Homebrew-Cask tool are received through Homebrew:

    brew update; brew cleanup; brew cask cleanup

And updates to individual Cask definitions are received whenever you issue
the Homebrew command:

    brew update

## OTHER WAYS TO SPECIFY A CASK

Most Homebrew-Cask commands can accept a Cask token as an argument. As
described above, the argument can take the form of:

  * A token as returned by `brew cask search`, _eg_ `google-chrome`

Homebrew-Cask also accepts three other forms in place of plain tokens:

  * A fully-qualified token which includes the Tap name, _eg_
    `caskroom/fonts/font-symbola`

  * A fully-qualified pathname to a Cask file, _eg_
    `/usr/local/Library/Taps/caskroom/homebrew-cask/Casks/google-chrome.rb`

  * A `curl`-retrievable URI to a Cask file, _eg_
    `https://raw.githubusercontent.com/caskroom/homebrew-cask/f25b6babcd398abf48e33af3d887b2d00de1d661/Casks/google-chrome.rb`

## ENVIRONMENT

Homebrew-Cask respects many of the environment variables used by the
parent command `brew`. Please refer to the `brew`(1) man page for more
information.

Environment variables specific to Homebrew-Cask:

  * HOMEBREW\_CASK\_OPTS:
    This variable may contain any arguments normally used as options on
    the command-line. This is particularly useful to make options persistent.
    For example, you might add to your .bash_profile or .zshenv something like:
    `export HOMEBREW_CASK_OPTS='--appdir=/Applications --caskroom=/etc/Caskroom'`.

## SEE ALSO

The Homebrew-Cask home page: <http://caskroom.io>.

The Homebrew-Cask GitHub page: <https://github.com/caskroom/homebrew-cask>.

`brew`(1), `curl`(1)

## AUTHORS

Paul Hinze and Contributors.

Man page format based on `brew.1.md` from Homebrew.

## BUGS

We still have bugs — and we are busy fixing them!  If you have a problem, don’t
be shy about reporting it on our [GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open).

When reporting bugs, remember that Homebrew-Cask is an independent project from
Homebrew. Do your best to direct bug reports to the appropriate project. If
your command-line started with `brew cask`, bring the bug to us first!
